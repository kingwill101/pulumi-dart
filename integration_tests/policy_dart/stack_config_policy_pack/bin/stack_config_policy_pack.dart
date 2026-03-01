import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  final config = pulumi.Config();
  final expected = config.requireBoolean('policyExpected');

  PolicyPack(
    'stack_config_policy_pack',
    PolicyPackArgs(
      enforcementLevel: EnforcementLevel.mandatory,
      policies: [
        ResourceValidationPolicy(
          name: 'validate-stack-config-value',
          description: 'Verifies property matches stack config.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (!args.props.containsKey('value')) {
                return;
              }

              if (args.props['value'] != expected) {
                reportViolation('Property was ${args.props['value']}');
              }
            },
          ],
        ),
      ],
    ),
  );
}
