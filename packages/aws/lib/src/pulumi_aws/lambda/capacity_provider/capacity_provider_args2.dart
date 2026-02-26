// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../capacity_provider_capacity_provider_scaling_config/capacity_provider_capacity_provider_scaling_config.dart';
import '../capacity_provider_instance_requirement/capacity_provider_instance_requirement.dart';
import '../capacity_provider_permissions_config/capacity_provider_permissions_config.dart';
import '../capacity_provider_timeouts/capacity_provider_timeouts.dart';
import '../capacity_provider_vpc_config/capacity_provider_vpc_config.dart';

/// The set of arguments for CapacityProvider.
class CapacityProviderArgs2 {
  /// Configuration block for scaling policy settings. See Capacity Provider Scaling Config below.
  final Input<List<CapacityProviderCapacityProviderScalingConfig>>?
      capacityProviderScalingConfigs;

  /// Configuration block for instance requirements settings. See Instance Requirements below.
  final Input<List<CapacityProviderInstanceRequirement>>? instanceRequirements;
  final Input<String>? kmsKeyArn;

  /// The name of the Capacity Provider.
  final Input<String>? name;

  /// Configuration block for permissions settings. See Permissions Config below.
  ///
  /// The following arguments are optional:
  final Input<CapacityProviderPermissionsConfig> permissionsConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<CapacityProviderTimeouts>? timeouts;

  /// Configuration block for VPC settings. See VPC Config below.
  final Input<CapacityProviderVpcConfig> vpcConfig;

  CapacityProviderArgs2({
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
      map['capacityProviderScalingConfigs'] = Input.mapOptionalInputValue<
              List<CapacityProviderCapacityProviderScalingConfig>,
              List<Map<String, dynamic>>>(
          capacityProviderScalingConfigsValue,
          (value) => Input.encodeList<
              CapacityProviderCapacityProviderScalingConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = Input.mapOptionalInputValue<
              List<CapacityProviderInstanceRequirement>,
              List<Map<String, dynamic>>>(
          instanceRequirementsValue,
          (value) => Input.encodeList<CapacityProviderInstanceRequirement,
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
    map['permissionsConfig'] = Input.mapInputValue<
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
      map['timeouts'] = Input.mapOptionalInputValue<CapacityProviderTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['vpcConfig'] =
        Input.mapInputValue<CapacityProviderVpcConfig, Map<String, dynamic>>(
            vpcConfig, (value) => value.toMap());
    return map;
  }

  factory CapacityProviderArgs2.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs2(
      capacityProviderScalingConfigs: Input.asOptionalInput<
              List<CapacityProviderCapacityProviderScalingConfig>>(
          map['capacityProviderScalingConfigs']),
      instanceRequirements:
          Input.asOptionalInput<List<CapacityProviderInstanceRequirement>>(
              map['instanceRequirements']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      permissionsConfig: Input.asInput<CapacityProviderPermissionsConfig>(
          map['permissionsConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<CapacityProviderTimeouts>(map['timeouts']),
      vpcConfig: Input.asInput<CapacityProviderVpcConfig>(map['vpcConfig']),
    );
  }
}
