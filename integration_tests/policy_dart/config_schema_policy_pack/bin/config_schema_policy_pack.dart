import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'config_schema_policy_pack',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'validator',
          description: 'Verifies property matches config schema values.',
          enforcementLevel: EnforcementLevel.mandatory,
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
              final config = args.getConfig<Map<String, Object?>>();
              final expected = config['value'];
              final names = (config['names'] as List<dynamic>?)
                      ?.map((item) => item.toString())
                      .toList(growable: false) ??
                  const <String>[];

              reportViolation(
                'Property was ${args.props['value']} (expected $expected, names=${names.join(',')})',
              );
            },
          ],
        ),
      ],
    ),
    initialConfig: {
      'validator': {
        'enforcementLevel': 'mandatory',
        'value': true,
        'names': ['policy-target'],
      },
    },
  );
}
