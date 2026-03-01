import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'config',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'allowed',
          description: 'Verifies properties',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (args.type != 'test:index:PolicyTarget') {
                return;
              }

              final config = args.getConfig<Map<String, Object?>>();
              if (args.props['value'] != config['value']) {
                reportViolation('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
