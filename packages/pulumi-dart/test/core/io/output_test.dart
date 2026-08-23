import 'dart:async';

import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';
import '../../test_utils/output_test_utils.dart';

void main() {
  group('output composition', () {
    test('recover leaves successful output unchanged', () async {
      var invoked = false;
      final source = createOutputData(value: 'original', isKnown: true);

      final data = await source.recover((_, _) {
        invoked = true;
        return Input.fromValue('replacement');
      }).getData();

      expect(invoked, isFalse);
      expect(data.value, equals('original'));
      expect(data.isKnown, isTrue);
    });

    test(
      'recover replaces a failed output with typed input metadata',
      () async {
        final dependency = DependencyResource(
          'urn:pulumi:dev::proj::pkg:type::replacement',
        );
        final source = Output<String>(
          Future<OutputData<String>>.error(StateError('boom')),
        );
        final replacement = createOutputData(
          value: 'recovered',
          isKnown: true,
          isSecret: true,
          resources: {dependency},
        );

        final data = await source.recover((error, stackTrace) {
          expect(error, isA<StateError>());
          expect(stackTrace, isA<StackTrace>());
          return replacement;
        }).getData();

        expect(data.value, equals('recovered'));
        expect(data.isKnown, isTrue);
        expect(data.isSecret, isTrue);
        expect(data.resources, equals({dependency}));
      },
    );

    test('recover accepts an asynchronous replacement', () async {
      final source = Output<int>(
        Future<OutputData<int>>.error(ArgumentError('bad value')),
      );

      final value = await source
          .recover((_, _) async => Input.fromValue(42))
          .getValue();

      expect(value, equals(42));
    });

    test('recover propagates a replacement failure', () async {
      final source = Output<String>(
        Future<OutputData<String>>.error(StateError('original')),
      );

      final recovered = source.recover((_, _) {
        throw ArgumentError('replacement');
      });

      await expectLater(recovered.getData(), throwsA(isA<ArgumentError>()));
    });

    test('recover does not treat an unknown output as a failure', () async {
      var invoked = false;
      final source = createOutputData<String>(value: null, isKnown: false);

      final data = await source.recover((_, _) {
        invoked = true;
        return Input.fromValue('replacement');
      }).getData();

      expect(invoked, isFalse);
      expect(data.isKnown, isFalse);
    });

    test('apply resolves nested output value', () async {
      final outer = createOutputData(value: 1, isKnown: true);
      final resolved = outer.apply(
        (_) => createOutputData(value: 99, isKnown: true),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals(99));
      expect(data.isSecret, isFalse);
    });

    test('apply propagates nested output error', () async {
      final outer = createOutputData(value: 1, isKnown: true);
      final resolved = outer.apply(
        (_) => Output<int>(
          Future<OutputData<int>>(() async => throw StateError('boom')),
        ),
      );

      await expectLater(resolved.getData(), throwsA(isA<StateError>()));
    });

    test('apply resolves future callback values', () async {
      final outer = createOutputData(value: 1, isKnown: true);
      final resolved = outer.apply((_) => Future<String>.value('later'));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('later'));
    });

    test('Output.all unions resources and secret bit', () async {
      final res1 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r1');
      final res2 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r2');

      final all = Output.all<int>([
        createOutputData(value: 1, isKnown: true, resources: {res1}),
        createOutputData(
          value: 2,
          isKnown: true,
          isSecret: true,
          resources: {res2},
        ),
      ]);

      final data = await all.getData();
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.value, equals([1, 2]));
      expect(data.resources, equals({res1, res2}));
    });

    test('Output.all with unknown input returns unknown', () async {
      final all = Output.all<int>([
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: null, isKnown: false),
      ]);

      final data = await all.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('getValue returns provided whenUnknown fallback', () async {
      final unknown = createOutputData<String?>(value: null, isKnown: false);
      expect(
        await unknown.getValue(whenUnknown: 'fallback'),
        equals('fallback'),
      );
    });

    test('apply keeps inner value when inner output is unknown', () async {
      final outer = createOutput(1, true);
      final resolved = outer.apply(
        (_) => createOutputRetainingUnknown('inner', false),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isFalse);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isFalse);
    });

    test(
      'apply keeps inner value and secret when inner output unknown and secret',
      () async {
        final outer = createOutput(1, true);
        final resolved = outer.apply(
          (_) => createOutputRetainingUnknown('inner', false, true),
        );
        final data = await resolved.getData();

        expect(data.isKnown, isFalse);
        expect(data.value, equals('inner'));
        expect(data.isSecret, isTrue);
      },
    );

    test('apply propagates true secret bit from inner output', () async {
      final outer = createOutput(1, true, false);
      final resolved = outer.apply((_) => createOutput('inner', true, true));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isTrue);
    });

    test('apply retains true secret bit from outer output', () async {
      final outer = createOutput(1, true, true);
      final resolved = outer.apply((_) => createOutput('inner', true, false));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isTrue);
    });

    test('apply does not run callback when outer output is unknown', () async {
      var callbackInvoked = false;
      final outer = createOutput<int>(1, false);
      final resolved = outer.apply((_) {
        callbackInvoked = true;
        return createOutputData(value: 'inner', isKnown: true);
      });
      final data = await resolved.getData();

      expect(callbackInvoked, isFalse);
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('apply unions outer and inner resources', () async {
      final res1 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r1');
      final res2 = DependencyResource('urn:pulumi:dev::proj::pkg:type::r2');
      final outer = createOutputWithResources([res1], 1, true);
      final resolved = outer.apply(
        (_) => createOutputWithResources([res2], 'inner', true),
      );
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
      expect(data.resources, equals({res1, res2}));
    });

    test(
      'createSecret preserves unknown state and dependency resources',
      () async {
        final dep = DependencyResource('urn:pulumi:dev::proj::pkg:type::dep');
        final source = Output<String>(
          Future.value(
            OutputData<String>(
              value: null,
              isKnown: false,
              isSecret: false,
              resources: {dep},
            ),
          ),
        );

        final secret = Output.createSecret(source);
        final data = await secret.getData();

        expect(data.isKnown, isFalse);
        expect(data.isSecret, isTrue);
        expect(data.value, isNull);
        expect(data.resources, equals({dep}));
      },
    );

    test('unsecret preserves unknown state and dependency resources', () async {
      final dep = DependencyResource('urn:pulumi:dev::proj::pkg:type::dep');
      final source = Output<String>(
        Future.value(
          OutputData<String>(
            value: null,
            isKnown: false,
            isSecret: true,
            resources: {dep},
          ),
        ),
      );

      final plain = Output.unsecret(source);
      final data = await plain.getData();

      expect(data.isKnown, isFalse);
      expect(data.isSecret, isFalse);
      expect(data.value, isNull);
      expect(data.resources, equals({dep}));
    });

    test('isSecretAsync reflects current secret bit', () async {
      final plain = createOutputData(
        value: 'v',
        isKnown: true,
        isSecret: false,
      );
      final secret = Output.createSecret(plain);

      expect(await Output.isSecretAsync(plain), isFalse);
      expect(await Output.isSecretAsync(secret), isTrue);
    });

    test('OutputData.create preserves all constructor fields', () {
      final dep = DependencyResource('urn:pulumi:dev::proj::pkg:type::dep');
      final data = OutputData.create<String>({dep}, 'value', true, true);

      expect(data.value, equals('value'));
      expect(data.isKnown, isTrue);
      expect(data.isSecret, isTrue);
      expect(data.resources, equals({dep}));
    });
  });

  group('output tuple helpers', () {
    test('tuple combines values into record', () async {
      final tuple = Output.tuple<int, String>(
        createOutputData(value: 42, isKnown: true),
        createOutputData(value: 'x', isKnown: true),
      );

      final data = await tuple.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals((42, 'x')));
    });

    test('tuple keeps unknown if any input unknown', () async {
      final tuple = Output.tuple<int?, String>(
        createOutputData(value: null, isKnown: false),
        createOutputData(value: 'x', isKnown: true),
      );

      final data = await tuple.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('tuple3 and tuple4 preserve secret bit', () async {
      final tuple3 = Output.tuple3<int, String, bool>(
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: 'a', isKnown: true, isSecret: true),
        createOutputData(value: true, isKnown: true),
      );

      final tuple4 = Output.tuple4<int, String, bool, double>(
        createOutputData(value: 1, isKnown: true),
        createOutputData(value: 'a', isKnown: true),
        createOutputData(value: true, isKnown: true, isSecret: true),
        createOutputData(value: 2.5, isKnown: true),
      );

      final tuple3Data = await tuple3.getData();
      final tuple4Data = await tuple4.getData();

      expect(tuple3Data.isSecret, isTrue);
      expect(tuple3Data.value, equals((1, 'a', true)));
      expect(tuple4Data.isSecret, isTrue);
      expect(tuple4Data.value, equals((1, 'a', true, 2.5)));
    });
  });

  group('output resolution recursion', () {
    test('apply resolves Input.fromValue return value', () async {
      final resolved = Output.create(
        'seed',
      ).apply<String>((_) => Input.fromValue('resolved'));
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('resolved'));
    });

    test('apply resolves nested Input/output wrapper chains', () async {
      final leaf = Output.create('leaf');
      final middle = Output<dynamic>(
        Future.value(
          OutputData<dynamic>(
            value: Input.fromOutput(leaf),
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        ),
      );
      final wrapped = Input.fromOutput(
        Output<dynamic>(
          Future.value(
            OutputData<dynamic>(
              value: middle,
              isKnown: true,
              isSecret: true,
              resources: {},
            ),
          ),
        ),
      );

      final resolved = Output.create('seed').apply<String>((_) => wrapped);
      final data = await resolved.getData();

      expect(data.isKnown, isTrue);
      expect(data.value, equals('leaf'));
      expect(data.isSecret, isTrue);
    });

    test('apply keeps unknown and secret from nested Input output', () async {
      final inner = createOutputRetainingUnknown('inner', false, true);
      final resolved = Output.create(
        'seed',
      ).apply<String>((_) => Input.fromOutput(inner));
      final data = await resolved.getData();

      expect(data.isKnown, isFalse);
      expect(data.value, equals('inner'));
      expect(data.isSecret, isTrue);
    });

    test('apply resolves Output that returns Input chain', () async {
      final inner = Output.create('inner');
      final wrapped = Output.create(Input.fromOutput(inner));
      final resolved = wrapped.apply<String>((_) => wrapped);

      final data = await resolved.getData();
      expect(data.isKnown, isTrue);
      expect(data.value, equals('inner'));
    });

    test('apply throws on recursive Output/Input cycle', () async {
      final completer = Completer<OutputData<dynamic>>();
      final recursive = Output<dynamic>(completer.future);
      final cycle = Input.fromOutput(recursive);

      completer.complete(
        OutputData<dynamic>(
          value: cycle,
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final resolved = Output.create('seed').apply<String>((_) => cycle);

      await expectLater(
        resolved.getData(),
        throwsA(
          predicate(
            (error) =>
                error is StateError &&
                error.toString().contains(
                  'Detected recursive Output/Input graph while resolving output value.',
                ),
          ),
        ),
      );
    });
  });
}
