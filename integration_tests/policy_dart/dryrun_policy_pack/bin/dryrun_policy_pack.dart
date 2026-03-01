import 'dart:io';

import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  PolicyPack(
    'dryrun_policy_pack',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'dryrun-policy-pack',
          description: 'Verifies dry-run mode is available in policy process.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (!args.props.containsKey('value')) {
                return;
              }

              if (Platform.environment['PULUMI_DRY_RUN'] == 'true') {
                reportViolation('dryrun-policy-pack');
              }
            },
          ],
        ),
      ],
    ),
  );
}
