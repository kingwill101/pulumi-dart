import 'package:pulumi_policy/pulumi_policy.dart';

void registerPolicyPack() {
  PolicyPack(
    'aws',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'discouraged-ec2-public-ip-address',
          description: 'Associating public IP addresses is discouraged.',
          enforcementLevel: EnforcementLevel.advisory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                if (instance['associatePublicIpAddress'] == true) {
                  reportViolation(
                    'Consider not setting associatePublicIpAddress to true.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'required-name-tag',
          description: "A 'Name' tag is required.",
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                _requireNameTag(instance['tags'], reportViolation);
              },
            ),
            validateResourceOfType<Map<String, Object?>>('aws:ec2/vpc:Vpc', (
              vpc,
              _,
              reportViolation,
            ) {
              _requireNameTag(vpc['tags'], reportViolation);
            }),
          ],
        ),
        ResourceValidationPolicy(
          name: 'prohibited-public-internet',
          description:
              'Ingress rules with public internet access are prohibited.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/securityGroup:SecurityGroup',
              (sg, _, reportViolation) {
                final ingress = sg['ingress'];
                if (ingress is! List) {
                  return;
                }

                final hasPublicRule = ingress.any((rule) {
                  if (rule is! Map) {
                    return false;
                  }
                  final cidrBlocks = rule['cidrBlocks'];
                  if (cidrBlocks is! List) {
                    return false;
                  }
                  return cidrBlocks.contains('0.0.0.0/0');
                });

                if (hasPublicRule) {
                  reportViolation(
                    'Ingress rules with public internet access are prohibited.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'prohibited-elasticbeanstalk',
          description: 'Use of Elastic Beanstalk is prohibited.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            (args, reportViolation) {
              if (args.type.startsWith('aws:elasticbeanstalk')) {
                reportViolation('Use of Elastic Beanstalk is prohibited.');
              }
            },
          ],
        ),
      ],
    ),
  );
}

void _requireNameTag(Object? tags, ReportViolation reportViolation) {
  if (tags is! Map || tags['Name'] == null) {
    reportViolation("A 'Name' tag is required.");
  }
}
