import 'package:pulumi_policy/pulumi_policy.dart';
import 'package:test/test.dart';

void main() {
  group('PolicyConfigSchema', () {
    test('rejects enforcementLevel as config property', () {
      expect(
        () => PolicyConfigSchema(
          properties: const {
            'enforcementLevel': {'type': 'string'},
          },
        ),
        throwsArgumentError,
      );
    });
  });

  group('Resource helpers', () {
    test('validateResourceOfType only applies to matching types', () async {
      var invoked = false;
      final validation = validateResourceOfType<Map<String, Object?>>(
        'pkg:index:Widget',
        (props, args, reportViolation) {
          invoked = true;
          expect(props['value'], 'ok');
        },
      );

      await validation(
        const ResourceValidationArgs(
          type: 'pkg:index:Widget',
          props: {'value': 'ok'},
          urn: 'urn:pulumi:dev::proj::pkg:index:Widget::w',
          name: 'w',
          opts: PolicyResourceOptions(
            protect: false,
            ignoreChanges: [],
            aliases: [],
            customTimeouts: PolicyCustomTimeouts(
              createSeconds: 0,
              updateSeconds: 0,
              deleteSeconds: 0,
            ),
            additionalSecretOutputs: [],
          ),
          stackTags: {},
        ),
        (_, [__]) {},
      );

      expect(invoked, isTrue);
    });
  });

  group('PolicyPack', () {
    test('throws UnsupportedError until runtime is implemented', () {
      final policy = ResourceValidationPolicy(
        name: 'test-policy',
        description: 'test',
        validateResource: [(_, __) {}],
      );

      expect(
        () => PolicyPack('test-pack', PolicyPackArgs(policies: [policy])),
        throwsA(isA<UnsupportedError>()),
      );
    });
  });
}
