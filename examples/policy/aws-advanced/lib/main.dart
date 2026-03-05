import 'package:pulumi_policy/pulumi_policy.dart';

void registerPolicyPack() {
  const approvedAmis = <String>{'amzn-ami-2018.03.u-amazon-ecs-optimized'};
  const dedicatedTenancyAmis = <String>{
    'amzn-ami-2018.03.u-amazon-ecs-optimized',
  };
  const dedicatedTenancyHostIds = <String>{};
  const approvedInstanceTypes = <String>{};

  PolicyPack(
    'awsSecRules',
    PolicyPackArgs(
      policies: [
        ResourceValidationPolicy(
          name: 'approved-amis-by-id',
          description: 'Instances should use approved AMIs.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                final ami = instance['ami']?.toString();
                if (ami != null && !approvedAmis.contains(ami)) {
                  reportViolation('EC2 Instances should use approved AMIs.');
                }
              },
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/launchConfiguration:LaunchConfiguration',
              (launchConfig, _, reportViolation) {
                final imageId = launchConfig['imageId']?.toString();
                if (imageId != null && !approvedAmis.contains(imageId)) {
                  reportViolation(
                    'EC2 LaunchConfigurations should use approved AMIs.',
                  );
                }
              },
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/launchTemplate:LaunchTemplate',
              (launchTemplate, _, reportViolation) {
                final imageId = launchTemplate['imageId']?.toString();
                if (imageId != null && !approvedAmis.contains(imageId)) {
                  reportViolation(
                    'EC2 LaunchTemplates should use approved AMIs.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'autoscaling-group-elb-healthcheck-required',
          description:
              'Auto Scaling groups that are associated with a load balancer '
              'should use Elastic Load Balancing health checks',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<
              Map<String, Object?>
            >('aws:autoscaling/group:Group', (group, _, reportViolation) {
              final loadBalancers = group['loadBalancers'];
              final targetGroupArns = group['targetGroupArns'];
              final classicLbAttached =
                  loadBalancers is List && loadBalancers.isNotEmpty;
              final albAttached =
                  targetGroupArns is List && targetGroupArns.isNotEmpty;

              if (classicLbAttached || albAttached) {
                final healthCheckType = group['healthCheckType']?.toString();
                if (healthCheckType != 'ELB') {
                  reportViolation(
                    'Auto Scaling groups that are associated with a load '
                    'balancer should use Elastic Load Balancing health checks',
                  );
                }
              }
            }),
          ],
        ),
        ResourceValidationPolicy(
          name: 'dedicated-instance-tenancy',
          description:
              "Instances with AMIs ${_setToString(dedicatedTenancyAmis)} "
              "or host IDs ${_setToString(dedicatedTenancyHostIds)} "
              "should use tenancy 'DEDICATED'",
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                final hostId = instance['hostId']?.toString();
                final ami = instance['ami']?.toString();
                final tenancy = instance['tenancy']?.toString();
                if (hostId != null &&
                    dedicatedTenancyHostIds.contains(hostId)) {
                  if (tenancy != 'DEDICATED') {
                    reportViolation(
                      "EC2 Instance with host ID '$hostId' not using tenancy "
                      "'DEDICATED'.",
                    );
                  }
                  return;
                }
                if (ami != null && dedicatedTenancyAmis.contains(ami)) {
                  if (tenancy != 'DEDICATED') {
                    reportViolation(
                      "EC2 Instance with AMI '$ami' not using tenancy "
                      "'DEDICATED'.",
                    );
                  }
                }
              },
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/launchConfiguration:LaunchConfiguration',
              (launchConfig, _, reportViolation) {
                final imageId = launchConfig['imageId']?.toString();
                final placementTenancy = launchConfig['placementTenancy']
                    ?.toString();
                if (imageId != null && dedicatedTenancyAmis.contains(imageId)) {
                  if (placementTenancy != 'DEDICATED') {
                    reportViolation(
                      "EC2 LaunchConfiguration with image ID '$imageId' "
                      "not using tenancy 'DEDICATED'.",
                    );
                  }
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'desired-instance-type',
          description: 'EC2 instances should use approved instance types.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                final instanceType = instance['instanceType']?.toString();
                if (instanceType == null ||
                    !approvedInstanceTypes.contains(instanceType)) {
                  reportViolation(
                    'EC2 Instance should use the approved instance types.',
                  );
                }
              },
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/launchConfiguration:LaunchConfiguration',
              (launchConfig, _, reportViolation) {
                final instanceType = launchConfig['instanceType']?.toString();
                if (instanceType == null ||
                    !approvedInstanceTypes.contains(instanceType)) {
                  reportViolation(
                    'EC2 LaunchConfiguration should use the approved instance '
                    'types.',
                  );
                }
              },
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/launchTemplate:LaunchTemplate',
              (launchTemplate, _, reportViolation) {
                final instanceType = launchTemplate['instanceType']?.toString();
                if (instanceType == null ||
                    !approvedInstanceTypes.contains(instanceType)) {
                  reportViolation(
                    'EC2 LaunchTemplate should use the approved instance '
                    'types.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'ebs-optimized-instance',
          description:
              'EBS optimization should be enabled for all EC2 instances',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                if (instance['ebsOptimized'] != true) {
                  reportViolation(
                    'EC2 Instance should have EBS optimization enabled.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'ec2-instance-detailed-monitoring-enabled',
          description:
              'Detailed monitoring should be enabled for all EC2 instances',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                if (instance['monitoring'] != true) {
                  reportViolation(
                    'EC2 Instance should have monitoring enabled.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'ec2-volume-inuse-check',
          description: 'EBS volumes should be attached to all EC2 instances',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ec2/instance:Instance',
              (instance, _, reportViolation) {
                final ebsBlockDevices = instance['ebsBlockDevices'];
                if (ebsBlockDevices is List && ebsBlockDevices.isEmpty) {
                  reportViolation(
                    'EC2 Instance should have EBS volumes attached.',
                  );
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'encrypted-volumes',
          description: 'EBS volumes should be encrypted',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:ebs/volume:Volume',
              (volume, _, reportViolation) {
                if (volume['encrypted'] != true) {
                  reportViolation('EBS volumes should be encrypted.');
                }
              },
            ),
          ],
        ),
        ResourceValidationPolicy(
          name: 'elb-logging-enabled',
          description:
              'All Application Load Balancers and the Classic Load Balancers '
              'should have logging enabled.',
          enforcementLevel: EnforcementLevel.mandatory,
          validateResource: [
            validateResourceOfType<Map<String, Object?>>(
              'aws:elb/loadBalancer:LoadBalancer',
              _assertElbLogsEnabled,
            ),
            validateResourceOfType<Map<String, Object?>>(
              'aws:lb/loadBalancer:LoadBalancer',
              _assertElbLogsEnabled,
            ),
          ],
        ),
      ],
    ),
  );
}

void _assertElbLogsEnabled(
  Map<String, Object?> lb,
  ResourceValidationArgs _,
  ReportViolation reportViolation,
) {
  final accessLogs = lb['accessLogs'];
  if (accessLogs is! Map<String, Object?>) {
    reportViolation('Load Balancer should have logging enabled.');
    return;
  }
  if (accessLogs['enabled'] != true) {
    reportViolation('Load Balancer should have logging enabled.');
  }
}

String _setToString(Set<String> values) {
  return '{${values.join(',')}}';
}
