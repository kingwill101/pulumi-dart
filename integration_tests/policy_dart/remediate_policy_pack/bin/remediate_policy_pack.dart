import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'remediate_policy_pack',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'remediate-policy-pack',
          description: 'Remediates value to true for policy target resources.',
          enforcementLevel: EnforcementLevel.remediate,
          remediateResource: (args) {
            if (!args.props.containsKey('value')) {
              return null;
            }

            if (args.props['value'] == true) {
              return null;
            }

            return <String, Object?>{'value': true};
          },
        ),
        ResourceValidationPolicy(
          name: 'validate-remediated-value',
          description: 'Ensures remediation ran before validation.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (!args.props.containsKey('value')) {
                return;
              }

              if (args.props['value'] != true) {
                reportViolation('value was not remediated');
              }
            },
          ],
        ),
      ],
    ),
  );
}
