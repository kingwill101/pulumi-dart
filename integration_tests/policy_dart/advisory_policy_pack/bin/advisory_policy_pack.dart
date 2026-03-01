import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'advisory_policy_pack',
    PolicyPackArgs(
      policies: [
        StackValidationPolicy(
          name: 'advisory-policy-pack',
          description: 'Failing advisory policy pack for testing',
          enforcementLevel: EnforcementLevel.advisory,
          validateStack: (stack, reportViolation) {
            reportViolation('foobar');
          },
        ),
      ],
    ),
  );
}
