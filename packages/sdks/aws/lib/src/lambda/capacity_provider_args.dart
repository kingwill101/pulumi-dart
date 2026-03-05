// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_capacity_provider_scaling_config.dart';
import 'capacity_provider_instance_requirement.dart';
import 'capacity_provider_permissions_config.dart';
import 'capacity_provider_timeouts.dart';
import 'capacity_provider_vpc_config.dart';

/// {@template pulumi_lambda_capacity_provider_capacity_provider_args_doc}
/// The set of arguments for CapacityProvider.
/// {@endtemplate}
/// {@macro pulumi_lambda_capacity_provider_capacity_provider_args_doc}
class CapacityProviderArgs {
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
  final pulumi.Input<CapacityProviderPermissionsConfig> permissionsConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CapacityProviderTimeouts>? timeouts;
  /// Configuration block for VPC settings. See VPC Config below.
  final pulumi.Input<CapacityProviderVpcConfig> vpcConfig;

  /// Creates a new [CapacityProviderArgs].
  /// [capacityProviderScalingConfigs] Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  /// [instanceRequirements] Configuration block for instance requirements settings. See Instance Requirements below.
  /// [kmsKeyArn] Optional.
  /// [name] The name of the Capacity Provider.
  /// [permissionsConfig] Configuration block for permissions settings. See Permissions Config below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcConfig] Configuration block for VPC settings. See VPC Config below.
  CapacityProviderArgs({
    this.capacityProviderScalingConfigs,
    this.instanceRequirements,
    this.kmsKeyArn,
    this.name,
    required this.permissionsConfig,
    this.region,
    this.tags,
    this.timeouts,
    required this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviderScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderCapacityProviderScalingConfig>, List<Map<String, dynamic>>>(capacityProviderScalingConfigs, (value) => pulumi.Input.encodeList<CapacityProviderCapacityProviderScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<List<CapacityProviderInstanceRequirement>, List<Map<String, dynamic>>>(instanceRequirements, (value) => pulumi.Input.encodeList<CapacityProviderInstanceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'permissionsConfig': pulumi.Input.mapInputValue<CapacityProviderPermissionsConfig, Map<String, dynamic>>(permissionsConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapacityProviderTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcConfig': pulumi.Input.mapInputValue<CapacityProviderVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CapacityProviderArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs(
      capacityProviderScalingConfigs: (() { final guardedValue = map['capacityProviderScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CapacityProviderCapacityProviderScalingConfig>(guardedValue, (value) => CapacityProviderCapacityProviderScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(guardedValue, (value) => CapacityProviderInstanceRequirement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionsConfig: pulumi.Input.fromValue(CapacityProviderPermissionsConfig.fromMap((map['permissionsConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityProviderTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: pulumi.Input.fromValue(CapacityProviderVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

