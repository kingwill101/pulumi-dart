// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_capacity_provider_scaling_config.dart';
import 'capacity_provider_instance_requirement.dart';
import 'capacity_provider_permissions_config.dart';
import 'capacity_provider_timeouts.dart';
import 'capacity_provider_vpc_config.dart';

/// Input properties used for looking up and filtering CapacityProvider resources.
class CapacityProviderState {
  /// ARN of the Capacity Provider.
  final pulumi.Input<String>? arn;
  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  final pulumi.Input<List<CapacityProviderCapacityProviderScalingConfig>>? capacityProviderScalingConfigs;
  /// Configuration block for instance requirements settings. See Instance Requirements below.
  final pulumi.Input<List<CapacityProviderInstanceRequirement>>? instanceRequirements;
  final pulumi.Input<String>? kmsKeyArn;
  /// The name of the Capacity Provider.
  final pulumi.Input<String>? name;
  /// Configuration block for permissions settings. See Permissions Config below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CapacityProviderPermissionsConfig>? permissionsConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CapacityProviderTimeouts>? timeouts;
  /// Configuration block for VPC settings. See VPC Config below.
  final pulumi.Input<CapacityProviderVpcConfig>? vpcConfig;

  /// Creates a new [CapacityProviderState].
  /// [arn] ARN of the Capacity Provider.
  /// [capacityProviderScalingConfigs] Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  /// [instanceRequirements] Configuration block for instance requirements settings. See Instance Requirements below.
  /// [kmsKeyArn] Optional.
  /// [name] The name of the Capacity Provider.
  /// [permissionsConfig] Configuration block for permissions settings. See Permissions Config below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcConfig] Configuration block for VPC settings. See VPC Config below.
  CapacityProviderState({
    this.arn,
    this.capacityProviderScalingConfigs,
    this.instanceRequirements,
    this.kmsKeyArn,
    this.name,
    this.permissionsConfig,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityProviderScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderCapacityProviderScalingConfig>, List<Map<String, dynamic>>>(capacityProviderScalingConfigs, (value) => pulumi.Input.encodeList<CapacityProviderCapacityProviderScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderInstanceRequirement>, List<Map<String, dynamic>>>(instanceRequirements, (value) => pulumi.Input.encodeList<CapacityProviderInstanceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'permissionsConfig': ?pulumi.Input.mapOptionalInputValue<CapacityProviderPermissionsConfig, Map<String, dynamic>>(permissionsConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityProviderTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<CapacityProviderVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CapacityProviderState.fromMap(Map<String, dynamic> map) {
    return CapacityProviderState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      capacityProviderScalingConfigs: map['capacityProviderScalingConfigs'] == null ? null : ((pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(map['capacityProviderScalingConfigs']!, (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      instanceRequirements: map['instanceRequirements'] == null ? null : ((pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(map['instanceRequirements']!, (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      permissionsConfig: map['permissionsConfig'] == null ? null : ((CapacityProviderPermissionsConfig.fromMap((map['permissionsConfig']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CapacityProviderTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcConfig: map['vpcConfig'] == null ? null : ((CapacityProviderVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

