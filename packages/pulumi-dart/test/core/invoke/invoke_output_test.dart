import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';
import '../../test_utils/deployment_capture_test_utils.dart';

class _InvokeDependencyMonitor extends CapturingRegisterMonitor {
  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    registerResourceRequests.add(request);
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = request.object;
  }

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    return ResourceInvokeResponse()
      ..return_1 = (Struct()..fields['result'] = request.args.fields['value']!);
  }
}

class _InvokeDependencyResource extends CustomResource {
  late final Output<String> value;

  _InvokeDependencyResource(String name, Input<String> value)
    : super('test:index:Dependency', name, {
        'value': value,
      }, CustomResourceOptions()) {
    this.value = registerOutput<String>('value');
  }
}

class _InvokeDependentResource extends CustomResource {
  _InvokeDependentResource(String name, Input<String> value)
    : super('test:index:Dependent', name, {
        'value': value,
      }, CustomResourceOptions());
}

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

    test(
      'preserves invoke input dependencies through resource registration',
      () async {
        runtime.clearMocks();
        final monitor = _InvokeDependencyMonitor();
        final deployment = configureCapturedDeployment(monitor);
        final source = _InvokeDependencyResource('source', 'hello'.input());
        final invoked = invokeOutput<Map<String, dynamic>>('test:index:echo', {
          'value': source.value.input(),
        });
        _InvokeDependentResource(
          'target',
          invoked.apply<String>((value) => value['result'] as String).input(),
        );

        await deployment.registerOutputs();

        final request = monitor.registerResourceRequests.firstWhere(
          (request) => request.name == 'target',
        );
        final sourceUrn = await source.urn.getValue();
        expect(request.propertyDependencies['value']?.urns, [sourceUrn]);
        expect(request.dependencies, [sourceUrn]);
        DeploymentImpl.clearInstance();
      },
    );
  });
}
