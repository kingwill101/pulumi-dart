import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'simple',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.advisory,
      policies: [
        ResourceValidationPolicy(
          name: 'truthiness',
          description: 'Verifies properties are true',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            (args, reportViolation) {
              if (args.type == 'test:index:PolicyTarget') {
                reportViolation('This is a test warning');
              }
            },
          ],
        ),
        ResourceValidationPolicy(
          name: 'falsiness',
          description: 'Verifies properties are false',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (args.type == 'test:index:PolicyTarget') {
                reportViolation('This is a test error');
              }
            },
          ],
        ),
      ],
    ),
  );
}
