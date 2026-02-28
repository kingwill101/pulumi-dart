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
    List<CapacityProviderCapacityProviderScalingConfig>?
        capacityProviderScalingConfigs,
    List<CapacityProviderInstanceRequirement>? instanceRequirements,
    String? kmsKeyArn,
    String? name,
    required CapacityProviderPermissionsConfig permissionsConfig,
    String? region,
    Map<String, String>? tags,
    CapacityProviderTimeouts? timeouts,
    required CapacityProviderVpcConfig vpcConfig,
  })  : capacityProviderScalingConfigs = pulumi.Input.asOptionalInput<
                List<CapacityProviderCapacityProviderScalingConfig>>(
            capacityProviderScalingConfigs),
        instanceRequirements = pulumi.Input.asOptionalInput<
            List<CapacityProviderInstanceRequirement>>(instanceRequirements),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        permissionsConfig =
            pulumi.Input.asInput<CapacityProviderPermissionsConfig>(
                permissionsConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<CapacityProviderTimeouts>(timeouts),
        vpcConfig = pulumi.Input.asInput<CapacityProviderVpcConfig>(vpcConfig);

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

  factory CapacityProviderArgs.fromMap(Map<String, dynamic> map) {
    return CapacityProviderArgs(
      capacityProviderScalingConfigs: map['capacityProviderScalingConfigs'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  CapacityProviderCapacityProviderScalingConfig>(
              map['capacityProviderScalingConfigs'],
              (value) => CapacityProviderCapacityProviderScalingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : pulumi.Input.decodeList<CapacityProviderInstanceRequirement>(
              map['instanceRequirements'],
              (value) => CapacityProviderInstanceRequirement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      permissionsConfig: CapacityProviderPermissionsConfig.fromMap(
          (map['permissionsConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : CapacityProviderTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      vpcConfig: CapacityProviderVpcConfig.fromMap(
          (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
