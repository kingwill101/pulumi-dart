import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'config-schema',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'validator',
          description: 'Verifies property matches config schema values.',
          enforcementLevel: EnforcementLevel.advisory,
          configSchema: PolicyConfigSchema(
            properties: {
              'value': {'type': 'boolean'},
              'names': {
                'type': 'array',
                'items': {'type': 'string'},
                'minItems': 1,
              },
            },
            required: const ['value', 'names'],
          ),
          validateResource: [
            (args, reportViolation) {
              if (args.type != 'test:index:PolicyTarget') {
                return;
              }

              final config = args.getConfig<Map<String, Object?>>();
              final expected = config['value'];
              final names = (config['names'] as List<dynamic>?)
                      ?.map((item) => item.toString())
                      .toList(growable: false) ??
                  const <String>[];

              if (names.contains(args.name) &&
                  args.props['value'] != expected) {
                reportViolation('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
