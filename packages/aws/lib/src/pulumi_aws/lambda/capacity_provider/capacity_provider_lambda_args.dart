// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../capacity_provider_capacity_provider_scaling_config/capacity_provider_capacity_provider_scaling_config.dart';
import '../capacity_provider_instance_requirement/capacity_provider_instance_requirement.dart';
import '../capacity_provider_permissions_config/capacity_provider_permissions_config.dart';
import '../capacity_provider_timeouts/capacity_provider_timeouts.dart';
import '../capacity_provider_vpc_config/capacity_provider_vpc_config.dart';

/// The set of arguments for CapacityProvider.
class CapacityProviderLambdaArgs {
  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  final pulumi.Input<List<CapacityProviderCapacityProviderScalingConfig>>?
      capacityProviderScalingConfigs;

  /// Configuration block for instance requirements settings. See Instance Requirements below.
  final pulumi.Input<List<CapacityProviderInstanceRequirement>>?
      instanceRequirements;
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

  CapacityProviderLambdaArgs({
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
    final map = <String, dynamic>{};
    final capacityProviderScalingConfigsValue = capacityProviderScalingConfigs;
    if (capacityProviderScalingConfigsValue != null) {
      map['capacityProviderScalingConfigs'] =
          pulumi.Input.mapOptionalInputValue<
                  List<CapacityProviderCapacityProviderScalingConfig>,
                  List<Map<String, dynamic>>>(
              capacityProviderScalingConfigsValue,
              (value) => pulumi.Input.encodeList<
                  CapacityProviderCapacityProviderScalingConfig,
                  Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = pulumi.Input.mapOptionalInputValue<
              List<CapacityProviderInstanceRequirement>,
              List<Map<String, dynamic>>>(
          instanceRequirementsValue,
          (value) => pulumi.Input.encodeList<
              CapacityProviderInstanceRequirement,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['permissionsConfig'] = pulumi.Input.mapInputValue<
        CapacityProviderPermissionsConfig,
        Map<String, dynamic>>(permissionsConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CapacityProviderTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcConfig'] = pulumi.Input.mapInputValue<CapacityProviderVpcConfig,
        Map<String, dynamic>>(vpcConfig, (value) => value.toMap());
    return map;
  }

  factory CapacityProviderLambdaArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderLambdaArgs(
      capacityProviderScalingConfigs: pulumi.Input.asOptionalInput<
              List<CapacityProviderCapacityProviderScalingConfig>>(
          map['capacityProviderScalingConfigs']),
      instanceRequirements: pulumi.Input.asOptionalInput<
              List<CapacityProviderInstanceRequirement>>(
          map['instanceRequirements']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      permissionsConfig:
          pulumi.Input.asInput<CapacityProviderPermissionsConfig>(
              map['permissionsConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<CapacityProviderTimeouts>(
          map['timeouts']),
      vpcConfig:
          pulumi.Input.asInput<CapacityProviderVpcConfig>(map['vpcConfig']),
    );
  }
}
