import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'enforcement-config',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'false',
          description: 'Verifies property is false',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            (args, reportViolation) {
              if (args.type != 'test:index:PolicyTarget') {
                return;
              }

              if (args.props['value'] == true) {
                reportViolation('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
