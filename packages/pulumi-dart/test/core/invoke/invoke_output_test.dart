import 'package:mockito/mockito.dart';
import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _InvokeOutputMocks extends Mocks {
  int callCount = 0;
  MockCallArgs? lastCallArgs;
  final Map<String, dynamic> _responses;

  _InvokeOutputMocks(this._responses);

  @override
  Future<Map<String, dynamic>> call(MockCallArgs args) async {
    callCount++;
    lastCallArgs = args;
    return _responses[args.token] as Map<String, dynamic>? ??
        <String, dynamic>{};
  }

  @override
  Future<(String?, Map<String, dynamic>)> newResource(
    MockResourceArgs args,
  ) async {
    return ('id-1', args.inputs);
  }
}

void main() {
  group('invokeOutput', () {
    tearDown(() {
      runtime.clearMocks();
    });

    test('returns typed output result and invokes monitor call', () async {
      final mocks = _InvokeOutputMocks(<String, dynamic>{
        'test:index:Echo': <String, dynamic>{'value': 42},
      });
      runtime.setMocks(mocks);

      final result = invokeOutput<Map<String, dynamic>>(
        'test:index:Echo',
        <String, Input<dynamic>>{'value': Input.fromValue(42)},
      );

      expect(await result.getValue(), equals(<String, dynamic>{'value': 42}));
      expect(mocks.callCount, equals(1));
      expect(mocks.lastCallArgs, isNotNull);
      expect(mocks.lastCallArgs!.token, equals('test:index:Echo'));
      expect(mocks.lastCallArgs!.args['value'], equals(42));
    });

    test('propagates secret bit from input args', () async {
      final mocks = _InvokeOutputMocks(<String, dynamic>{
        'test:index:SecretEcho': <String, dynamic>{'value': 99},
      });
      runtime.setMocks(mocks);

      final secretInput = Output.createSecret(Output.create(99));
      final result = invokeOutput<Map<String, dynamic>>(
        'test:index:SecretEcho',
        <String, Input<dynamic>>{'value': Input.fromOutput(secretInput)},
      );

      final data = await result.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals(<String, dynamic>{'value': 99}));
    });

    test(
      'returns unknown output and skips invoke when any input is unknown',
      () async {
        final mocks = _InvokeOutputMocks(<String, dynamic>{
          'test:index:Echo': <String, dynamic>{'value': 0},
        });
        runtime.setMocks(mocks);

        final unknownInput = Output.createUnknown<int>();
        final result = invokeOutput<Map<String, dynamic>>(
          'test:index:Echo',
          <String, Input<dynamic>>{'value': Input.fromOutput(unknownInput)},
        );

        final data = await result.getData();
        expect(data.isKnown, isFalse);
        expect(data.isSecret, isFalse);
        expect(mocks.callCount, equals(0));
      },
    );

    test('invokeSingleOutput unwraps first result value', () async {
      final mocks = _InvokeOutputMocks(<String, dynamic>{
        'test:index:Single': <String, dynamic>{
          'first': 'alpha',
          'second': 'beta',
        },
        'test:index:Empty': <String, dynamic>{},
      });
      runtime.setMocks(mocks);

      final single = invokeSingleOutput<String>(
        'test:index:Single',
        <String, Input<dynamic>>{},
      );
      expect(await single.getValue(), equals('alpha'));

      final empty = invokeSingleOutput<String>(
        'test:index:Empty',
        <String, Input<dynamic>>{},
      );
      await expectLater(empty.getValue(), throwsStateError);
    });

    test(
      'returns unknown and skips invoke when dependsOn custom resource id is unknown',
      () async {
        final mocks = _InvokeOutputMocks(<String, dynamic>{
          'test:index:Echo': <String, dynamic>{'value': 1},
        });
        runtime.setMocks(mocks);

        final dependency = MockCustomResource();
        when(dependency.id).thenReturn(Output.createUnknown<String>());

        final result = invokeOutput<Map<String, dynamic>>(
          'test:index:Echo',
          <String, Input<dynamic>>{'value': Input.fromValue(1)},
          options: InvokeOutputOptions(dependsOn: <Resource>[dependency]),
        );

        final data = await result.getData();
        expect(data.isKnown, isFalse);
        expect(data.resources, contains(dependency));
        expect(mocks.callCount, equals(0));
      },
    );

    test(
      'propagates explicit dependency resources onto returned output',
      () async {
        final mocks = _InvokeOutputMocks(<String, dynamic>{
          'test:index:Echo': <String, dynamic>{'value': 7},
        });
        runtime.setMocks(mocks);

        final dependency = MockResource();
        final result = invokeOutput<Map<String, dynamic>>(
          'test:index:Echo',
          <String, Input<dynamic>>{'value': Input.fromValue(7)},
          options: InvokeOutputOptions(dependsOn: <Resource>[dependency]),
        );

        final data = await result.getData();
        expect(data.isKnown, isTrue);
        expect(data.value, equals(<String, dynamic>{'value': 7}));
        expect(data.resources, contains(dependency));
        expect(mocks.callCount, equals(1));
      },
    );
  });
}
