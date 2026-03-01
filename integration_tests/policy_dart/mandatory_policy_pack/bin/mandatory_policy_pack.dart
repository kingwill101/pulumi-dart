import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'mandatory_policy_pack',
    PolicyPackArgs(
      policies: [
        StackValidationPolicy(
          name: 'mandatory-policy-pack',
          description: 'Failing mandatory policy pack for testing',
          enforcementLevel: EnforcementLevel.mandatory,
          validateStack: (stack, reportViolation) {
            reportViolation('mandatory-policy-pack');
          },
        ),
      ],
    ),
  );
}
