import 'dart:io';

import 'package:pulumi_policy/pulumi_policy.dart';

const requiredRegion = 'us-west-2';

void registerPolicyPack() {
  final stack =
      Platform.environment['PULUMI_NODEJS_STACK'] ??
      Platform.environment['PULUMI_STACK'] ??
      '';

  final policies = <Policy>[_requireRegionPolicy()];

  const requiredInstanceTypes = <String>{
    't4g.nano',
    't4g.micro',
    't4g.small',
    't4g.medium',
    't4g.large',
    't4g.xlarge',
    't4g.2xlarge',
  };

  const requiredRdsBurstTypes = <String>{
    'db.t4g.micro',
    'db.t4g.small',
    'db.t4g.medium',
    'db.t4g.large',
    'db.t4g.xlarge',
    'db.t4g.2xlarge',
  };

  const instanceTypesWithSavingsPlans = <String>{'m6a.large'};

  if (stack == 'dev') {
    policies.addAll([
      _requireInstanceTenancy(
        'host-instance-tenancy',
        'DEFAULT',
        imageIds: const <String>[],
        hostIds: const <String>[],
      ),
      _requireSpotInstance('require-spot-instance', EnforcementLevel.mandatory),
      _requireInstanceType(
        't4g-instance-types',
        requiredInstanceTypes,
        EnforcementLevel.mandatory,
      ),
      _requireEbsVolumeTypeGp3('gp3-volume-types', EnforcementLevel.mandatory),
      _requireCloudWatchLogRetention(
        'cloudwatch-retention',
        30,
        EnforcementLevel.mandatory,
      ),
      _requireRdsInstanceType('required-instance-types', const <String>{
        'db.t4g.medium',
      }, EnforcementLevel.mandatory),
      _requireRdsVolumesGp2('rds-gp2-volume', EnforcementLevel.mandatory),
      _requireRdsLicenseModel('rds-license-model', const <String>{
        'license-included',
        'general-public-license',
      }, EnforcementLevel.mandatory),
      _requireBucketLifecycleRules(
        's3-require-lifecycle',
        EnforcementLevel.mandatory,
      ),
      _requireSpecificBucketExpirationDays(
        's3-expire-at-30-days',
        30,
        EnforcementLevel.advisory,
      ),
      _requireSingleNatGateway(
        'single-nat-gateway',
        EnforcementLevel.mandatory,
      ),
    ]);
  } else if (stack == 'uat') {
    policies.addAll([
      _requireInstanceTenancy(
        'host-instance-tenancy',
        'DEFAULT',
        imageIds: const <String>[],
        hostIds: const <String>[],
      ),
      _requireSpotInstance('require-spot-instance', EnforcementLevel.advisory),
      _requireInstanceType('t4g-instance-types', requiredInstanceTypes),
      _requireEbsVolumeTypeGp3('gp3-volume-types', EnforcementLevel.mandatory),
      _requireCloudWatchLogRetention(
        'cloudwatch-retention',
        60,
        EnforcementLevel.mandatory,
      ),
      _requireRdsInstanceType(
        'required-instance-types',
        requiredRdsBurstTypes,
        EnforcementLevel.mandatory,
      ),
      _requireBucketLifecycleRules(
        's3-require-lifecycle',
        EnforcementLevel.mandatory,
      ),
      _requireSpecificBucketExpirationDays(
        's3-expire-at-30-days',
        30,
        EnforcementLevel.advisory,
      ),
    ]);
  } else if (stack == 'production') {
    policies.addAll([
      _requireInstanceType(
        'savings-plan-instances',
        instanceTypesWithSavingsPlans,
      ),
    ]);
    _requireCloudWatchLogRetention(
      'cloudwatch-retention',
      90,
      EnforcementLevel.mandatory,
    );
  }

  PolicyPack('aws-typescript', PolicyPackArgs(policies: policies));
}

ResourceValidationPolicy _requireRegionPolicy() {
  return ResourceValidationPolicy(
    name: 'require-region',
    description: 'Must use an approved region.',
    enforcementLevel: EnforcementLevel.advisory,
    configSchema: PolicyConfigSchema(
      properties: {
        'allowedRegions': {
          'type': 'array',
          'items': <String, Object?>{'type': 'string'},
          'default': <String>[requiredRegion],
        },
      },
    ),
    validateResource: [
      (args, reportViolation) {
        if (args.type != 'pulumi:providers:aws') {
          return;
        }

        final config = args.getConfig<Map<String, Object?>>();
        final configuredRegions = config['allowedRegions'];
        final allowedRegions = configuredRegions is List
            ? configuredRegions.map((value) => value.toString()).toList()
            : <String>[requiredRegion];

        final region = args.props['region']?.toString();
        if (region == null || !allowedRegions.contains(region)) {
          reportViolation('Region [$region] is not allowed.');
        }
      },
    ],
  );
}

ResourceValidationPolicy _requireInstanceTenancy(
  String name,
  String tenancy, {
  Iterable<String>? imageIds,
  Iterable<String>? hostIds,
}) {
  final images = imageIds?.toSet();
  final hosts = hostIds?.toSet();

  return ResourceValidationPolicy(
    name: name,
    description:
        "Instances with AMIs ${_setToString(images)} or host IDs "
        "${_setToString(hosts)} should use tenancy '$tenancy'",
    enforcementLevel: EnforcementLevel.mandatory,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:ec2/instance:Instance',
        (instance, _, reportViolation) {
          final hostId = instance['hostId']?.toString();
          final ami = instance['ami']?.toString();
          final actualTenancy = instance['tenancy']?.toString();

          if (hosts != null && hostId != null && hosts.contains(hostId)) {
            if (actualTenancy != tenancy) {
              reportViolation(
                "EC2 Instance with host ID '$hostId' not using tenancy "
                "'$tenancy'.",
              );
            }
          } else if (images != null && ami != null && images.contains(ami)) {
            if (actualTenancy != tenancy) {
              reportViolation(
                "EC2 Instance with AMI '$ami' not using tenancy '$tenancy'.",
              );
            }
          }
        },
      ),
      validateResourceOfType<Map<String, Object?>>(
        'aws:ec2/launchConfiguration:LaunchConfiguration',
        (launchConfig, _, reportViolation) {
          final imageId = launchConfig['imageId']?.toString();
          final placementTenancy = launchConfig['placementTenancy']?.toString();
          if (images != null && imageId != null && images.contains(imageId)) {
            if (placementTenancy != tenancy) {
              reportViolation(
                "EC2 LaunchConfiguration with image ID '$imageId' not using "
                "tenancy '$tenancy'.",
              );
            }
          }
        },
      ),
    ],
  );
}

StackValidationPolicy _requireSpotInstance(
  String name,
  EnforcementLevel enforcementLevel,
) {
  return StackValidationPolicy(
    name: name,
    description: 'EC2 instances should come from SpotInstanceRequest',
    enforcementLevel: enforcementLevel,
    validateStack: (stack, reportViolation) {
      for (final resource in stack.resources) {
        if (resource.type == 'aws:ec2/instance:Instance') {
          reportViolation('Instance: ${resource.name}, must be spot');
        } else if (resource.type == 'aws:ec2/launchTemplate:LaunchTemplate') {
          if (!resource.props.containsKey('instanceMarketOptions')) {
            reportViolation(
              'Launch template, ${resource.name}, must have '
              'instanceMarketOptions:marketType set to spot',
            );
          }
        } else if (resource.type ==
            'aws:ec2/launchConfiguration:LaunchConfiguration') {
          if (!resource.props.containsKey('spotPrice')) {
            reportViolation(
              'Launch Configuration, ${resource.name}, must have a spot price',
            );
          }
        }
      }
    },
  );
}

ResourceValidationPolicy _requireInstanceType(
  String name,
  Iterable<String> instanceTypes, [
  EnforcementLevel enforcementLevel = EnforcementLevel.advisory,
]) {
  final types = instanceTypes.toSet();
  return ResourceValidationPolicy(
    name: name,
    description: 'EC2 instances should use approved instance types.',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:ec2/instance:Instance',
        (instance, _, reportViolation) {
          final instanceType = instance['instanceType']?.toString();
          if (instanceType != null && !types.contains(instanceType)) {
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
          if (instanceType == null || !types.contains(instanceType)) {
            reportViolation(
              'EC2 LaunchConfiguration should use the approved instance types.',
            );
          }
        },
      ),
      validateResourceOfType<Map<String, Object?>>(
        'aws:ec2/launchTemplate:LaunchTemplate',
        (launchTemplate, _, reportViolation) {
          final instanceType = launchTemplate['instanceType']?.toString();
          if (instanceType == null || !types.contains(instanceType)) {
            reportViolation(
              'EC2 LaunchTemplate should use the approved instance types.',
            );
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _requireEbsVolumeTypeGp3(
  String name,
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: name,
    description: 'EBS volumes should be GP3',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>('aws:ebs/volume:Volume', (
        volume,
        _,
        reportViolation,
      ) {
        final type = volume['type']?.toString();
        if (type != 'gp3') {
          reportViolation('EBS volumes should be gp3');
        }
      }),
    ],
  );
}

ResourceValidationPolicy _requireCloudWatchLogRetention(
  String name,
  int numDays,
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: name,
    description: 'CloudWatch Log Retention Days Should Be Set',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:cloudwatch/logGroup:LogGroup',
        (logGroup, _, reportViolation) {
          final retentionInDays = logGroup['retentionInDays'];
          if (retentionInDays == null ||
              (retentionInDays is num && retentionInDays <= numDays)) {
            reportViolation(
              'Log Group Retention must be set, and less than $numDays',
            );
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _requireRdsInstanceType(
  String name,
  Iterable<String> instanceTypes, [
  EnforcementLevel enforcementLevel = EnforcementLevel.advisory,
]) {
  final types = instanceTypes.toSet();
  return ResourceValidationPolicy(
    name: name,
    description: 'RDS instances should use approved instance types.',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:rds/instance:Instance',
        (instance, _, reportViolation) {
          final instanceClass = instance['instanceClass']?.toString();
          if (instanceClass != null && !types.contains(instanceClass)) {
            reportViolation(
              'RDS Instance should use the approved instance types.',
            );
          }
        },
      ),
      validateResourceOfType<Map<String, Object?>>(
        'aws:rds/clusterInstance:ClusterInstance',
        (clusterInstance, _, reportViolation) {
          final instanceClass = clusterInstance['instanceClass']?.toString();
          if (instanceClass == null || !types.contains(instanceClass)) {
            reportViolation(
              'ClusterInstance should use the approved instance types.',
            );
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _requireRdsVolumesGp2(
  String name,
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: name,
    description: 'RDS StorageType Should be gp2',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:rds/instance:Instance',
        (instance, _, reportViolation) {
          final storageType = instance['storageType']?.toString();
          if (storageType != null && storageType != 'gp2') {
            reportViolation('RDS Instance should use gp2 storage type');
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _requireRdsLicenseModel(
  String name,
  Iterable<String> licenseModels,
  EnforcementLevel enforcementLevel,
) {
  final allowed = licenseModels.toSet();
  return ResourceValidationPolicy(
    name: name,
    description: 'RDS license type should be ${licenseModels.join(',')}',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>(
        'aws:rds/instance:Instance',
        (instance, _, reportViolation) {
          final licenseModel = instance['licenseModel']?.toString();
          if (licenseModel == null || !allowed.contains(licenseModel)) {
            reportViolation(
              'RDS license type should be ${licenseModels.join(',')}',
            );
          }
        },
      ),
    ],
  );
}

ResourceValidationPolicy _requireBucketLifecycleRules(
  String name,
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: name,
    description: 'Bucket should have lifecycle rules',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>('aws:s3/bucket:Bucket', (
        bucket,
        _,
        reportViolation,
      ) {
        final lifecycleRules = bucket['lifecycleRules'];
        if (lifecycleRules is! List || lifecycleRules.isEmpty) {
          reportViolation('S3 Bucket must have lifecycle rules');
        }
      }),
    ],
  );
}

ResourceValidationPolicy _requireSpecificBucketExpirationDays(
  String name,
  int numDays,
  EnforcementLevel enforcementLevel,
) {
  return ResourceValidationPolicy(
    name: name,
    description: 'S3 Bucket Expiration Set',
    enforcementLevel: enforcementLevel,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>('aws:s3/bucket:Bucket', (
        bucket,
        _,
        reportViolation,
      ) {
        final lifecycleRules = bucket['lifecycleRules'];
        if (lifecycleRules is! List) {
          return;
        }

        for (final rule in lifecycleRules) {
          if (rule is! Map) {
            continue;
          }
          final expiration = rule['expiration'];
          if (expiration == null ||
              (expiration is num && expiration <= numDays)) {
            reportViolation(
              'S3 Bucket lifecycle expiration show be set to less than '
              '$numDays',
            );
          }
        }
      }),
    ],
  );
}

StackValidationPolicy _requireSingleNatGateway(
  String name,
  EnforcementLevel enforcementLevel,
) {
  return StackValidationPolicy(
    name: name,
    description: 'There should be a max of one Nat Gateway',
    enforcementLevel: enforcementLevel,
    validateStack: (stack, reportViolation) {
      var counter = 0;
      for (final resource in stack.resources) {
        if (resource.type != 'aws:ec2/natGateway:NatGateway') {
          return;
        } else {
          counter = counter + 1;
        }
      }
      if (counter != 0) {
        reportViolation('Stack can only have one Nat Gateway');
      }
    },
  );
}

String _setToString(Set<String>? values) {
  return '{${(values ?? <String>{}).join(',')}}';
}
