import 'package:pulumi_policy/pulumi_policy.dart';

void registerPolicyPack() {
  PolicyPack(
    'gcp',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'discouraged-gcp-public-ip-address',
          description: 'Associating public IP addresses is discouraged.',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'gcp:compute/instance:Instance',
              (instance, _, reportViolation) {
                final interfaces = instance['networkInterfaces'];
                if (interfaces is! List) {
                  return;
                }

                final hasPublicIp = interfaces.any((net) {
                  if (net is! Map) {
                    return false;
                  }
                  return net['accessConfigs'] != null;
                });

                if (hasPublicIp) {
                  reportViolation(
                    'Associating public IP addresses is discouraged.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'prohibited-public-internet',
          description:
              'Ingress rules with public internet access are prohibited.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'gcp:compute/firewall:Firewall',
              (firewall, _, reportViolation) {
                final sourceRanges = firewall['sourceRanges'];
                if (sourceRanges is List &&
                    sourceRanges.contains('0.0.0.0/0')) {
                  reportViolation(
                    'Ingress rules with public internet access are prohibited.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'prohibited-bigtable',
          description: 'Use of Bigtable is prohibited.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (args.type.startsWith('gcp:bigtable')) {
                reportViolation('Use of Bigtable is prohibited.');
              }
            },
          ],
        ),
      ],
    ),
  );
}
