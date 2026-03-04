import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/output_completion_source.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:test/test.dart';

void main() {
  group('output completion source', () {
    final resource = DependencyResource(
      'urn:pulumi:dev::proj::pkg:index:Dependency::dep',
    );

    test(
      'targetType and output wrappers expose typed output metadata',
      () async {
        final source = OutputCompletionSource.create<int>(resource);
        expect(source.targetType, equals(int));

        source.setValue(
          const OutputData<Object?>(
            value: 42.0,
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );
        expect(await source.output.getValue(), equals(42));
      },
    );

    test('setStringValue with unknown marks output unknown', () async {
      final source = OutputCompletionSource.create<String?>(resource);
      source.setStringValue('ignored', false);

      final data = await source.output.getData();
      expect(data.isKnown, isFalse);
      expect(data.value, isNull);
    });

    test('setStringValue ignores updates after completion', () async {
      final source = OutputCompletionSource.create<String>(resource);
      source.setStringValue('first', true);
      source.setStringValue('second', true);

      expect(await source.output.getValue(), equals('first'));
    });

    test('setValue coerces list<bool> and generic list values', () async {
      final boolList = OutputCompletionSource.create<List<bool>?>(resource);
      boolList.setValue(
        const OutputData<Object?>(
          value: <Object?>[true, false],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final boolListValue = await boolList.output.getValue();
      expect(boolListValue, equals(<bool>[true, false]));

      final genericList = OutputCompletionSource.create<List<Object?>>(
        resource,
      );
      genericList.setValue(
        const OutputData<Object?>(
          value: <Object?>[1, 'two'],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      expect(await genericList.output.getValue(), equals(<Object?>[1, 'two']));
    });

    test(
      'setValue coerces Map<String, String> output to string values',
      () async {
        final typedMap = OutputCompletionSource.create<Map<String, String>>(
          resource,
        );
        typedMap.setValue(
          const OutputData<Object?>(
            value: <Object?, Object?>{
              'first': 1,
              'second': true,
              'third': null,
            },
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );

        final value = await typedMap.output.getValue();
        expect(
          value,
          equals(<String, String>{
            'first': '1',
            'second': 'true',
            'third': 'null',
          }),
        );
        expect(value, isA<Map<String, String>>());
      },
    );

    test('setValue coerces Map<String, dynamic> output map values', () async {
      final typedMap = OutputCompletionSource.create<Map<String, dynamic>>(
        resource,
      );
      typedMap.setValue(
        const OutputData<Object?>(
          value: <Object?, Object?>{
            'nested': <Object?, Object?>{'answer': 42},
            'list': <Object?>[1, 'two'],
            'flag': false,
          },
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final value = await typedMap.output.getValue();
      expect(
        value,
        equals(<String, Object?>{
          'nested': <String, Object?>{'answer': 42},
          'list': <Object?>[1, 'two'],
          'flag': false,
        }),
      );
      expect(value['nested'], isA<Map>());
      expect(value['list'], isA<List<Object?>>());
    });

    test('setValue coerces List<Map<String, String>> outputs', () async {
      final typedList =
          OutputCompletionSource.create<List<Map<String, String>>>(resource);
      typedList.setValue(
        const OutputData<Object?>(
          value: <Object?>[
            <Object?, Object?>{'key': 1},
            <Object?, Object?>{'next': true},
          ],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final value = await typedList.output.getValue();
      expect(
        value,
        equals(<Map<String, String>>[
          {'key': '1'},
          {'next': 'true'},
        ]),
      );
      expect(value, isA<List<Map<String, String>>>());
    });

    test('setValue coerces List<Map<String, dynamic>> outputs', () async {
      final typedList =
          OutputCompletionSource.create<List<Map<String, dynamic>>>(resource);
      typedList.setValue(
        const OutputData<Object?>(
          value: <Object?>[
            <Object?, Object?>{'key': 1},
            <Object?, Object?>{
              'list': <Object?>['a', 2],
            },
          ],
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final value = await typedList.output.getValue();
      expect(
        value,
        equals(<Map<String, Object?>>[
          {'key': 1},
          {
            'list': ['a', 2],
          },
        ]),
      );
      expect(value, isA<List<Map<String, dynamic>>>());
    });

    test(
      'setValue tolerates resource references inside List<Map<String, dynamic>> outputs',
      () async {
        // Parity intent with upstream deserialize semantics:
        // resource references can appear where generated SDK types expect
        // object-like payloads and must not crash output completion.
        final typedList =
            OutputCompletionSource.create<List<Map<String, dynamic>>>(resource);
        typedList.setValue(
          OutputData<Object?>(
            value: <Object?>[
              DependencyResource(
                'urn:pulumi:dev::proj::pkg:index:Dependency::dep-ref',
              ),
            ],
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );

        final value = await typedList.output.getValue();
        expect(value, equals(<Map<String, dynamic>>[<String, dynamic>{}]));
      },
    );

    test(
      'setValue tolerates resource references inside nested map-list outputs',
      () async {
        final typedMap =
            OutputCompletionSource.create<
              Map<String, List<Map<String, dynamic>>>
            >(resource);
        typedMap.setValue(
          OutputData<Object?>(
            value: <Object?, Object?>{
              'entries': <Object?>[
                DependencyResource(
                  'urn:pulumi:dev::proj::pkg:index:Dependency::nested-ref',
                ),
              ],
            },
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );

        final value = await typedMap.output.getValue();
        expect(
          value,
          equals(<String, List<Map<String, dynamic>>>{
            'entries': <Map<String, dynamic>>[<String, dynamic>{}],
          }),
        );
      },
    );

    test('setValue coerces nested Map<String, List<String>> outputs', () async {
      final typedMap = OutputCompletionSource.create<Map<String, List<String>>>(
        resource,
      );
      typedMap.setValue(
        const OutputData<Object?>(
          value: <Object?, Object?>{
            'primary': <Object?>['1', 2],
            'secondary': <Object?>[true, 'false'],
          },
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      );

      final value = await typedMap.output.getValue();
      expect(
        value,
        equals(<String, List<String>>{
          'primary': ['1', '2'],
          'secondary': ['true', 'false'],
        }),
      );
      expect(value, isA<Map<String, List<String>>>());
    });

    test(
      'setValue keeps known=false when resource reference cannot hydrate target type',
      () async {
        final source = OutputCompletionSource.create<DateTime?>(resource);
        source.setValue(
          OutputData<Object?>(
            value: DependencyResource(
              'urn:pulumi:dev::proj::pkg:index:Dependency::dep-ref',
            ),
            isKnown: true,
            isSecret: false,
            resources: {},
          ),
        );

        final data = await source.output.getData();
        expect(data.isKnown, isFalse);
        expect(data.value, isNull);
      },
    );
  });
}
