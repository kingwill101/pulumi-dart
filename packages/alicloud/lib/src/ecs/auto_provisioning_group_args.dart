// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_provisioning_group_launch_template_config.dart';

/// {@template pulumi_ecs_auto_provisioning_group_auto_provisioning_group_args_doc}
/// The set of arguments for AutoProvisioningGroup.
/// {@endtemplate}
/// {@macro pulumi_ecs_auto_provisioning_group_auto_provisioning_group_args_doc}
class AutoProvisioningGroupArgs {
  /// The name of the auto provisioning group to be created. It must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-)
  final pulumi.Input<String>? autoProvisioningGroupName;
  /// The type of the auto provisioning group. Valid values:`request` and `maintain`,Default value: `maintain`.
  final pulumi.Input<String>? autoProvisioningGroupType;
  /// The type of supplemental instances. When the total value of `PayAsYouGoTargetCapacity` and `SpotTargetCapacity` is smaller than the value of TotalTargetCapacity, the auto provisioning group will create instances of the specified type to meet the capacity requirements. Valid values:`PayAsYouGo`: Pay-as-you-go instances; `Spot`: Preemptible instances, Default value: `Spot`.
  final pulumi.Input<String>? defaultTargetCapacityType;
  /// The description of the auto provisioning group.
  final pulumi.Input<String>? description;
  /// The shutdown policy for excess preemptible instances followed when the capacity of the auto provisioning group exceeds the target capacity. Valid values: `no-termination` and `termination`,Default value: `no-termination`.
  final pulumi.Input<String>? excessCapacityTerminationPolicy;
  /// DataDisk mappings to attach to ecs instance. See `block-config` below for details.
  final pulumi.Input<List<AutoProvisioningGroupLaunchTemplateConfig>> launchTemplateConfigs;
  /// The ID of the instance launch template associated with the auto provisioning group.
  final pulumi.Input<String> launchTemplateId;
  /// The version of the instance launch template associated with the auto provisioning group.
  final pulumi.Input<String>? launchTemplateVersion;
  /// The global maximum price for preemptible instances in the auto provisioning group. If both the `MaxSpotPrice` and `LaunchTemplateConfig.N.MaxPrice` parameters are specified, the maximum price is the lower value of the two.
  final pulumi.Input<double>? maxSpotPrice;
  /// The scale-out policy for pay-as-you-go instances. Valid values: `lowest-price` and `prioritized`,Default value: `lowest-price`.
  final pulumi.Input<String>? payAsYouGoAllocationStrategy;
  /// The target capacity of pay-as-you-go instances in the auto provisioning group.
  final pulumi.Input<String>? payAsYouGoTargetCapacity;
  /// The scale-out policy for preemptible instances. Valid values:`lowest-price` and `diversified`,Default value: `lowest-price`.
  final pulumi.Input<String>? spotAllocationStrategy;
  /// The default behavior after preemptible instances are shut down. Valid values: `stop` and `terminate`,Default value: `stop`.
  final pulumi.Input<String>? spotInstanceInterruptionBehavior;
  /// This parameter takes effect when the `SpotAllocationStrategy` parameter is set to `lowest-price`. The auto provisioning group selects instance types of the lowest cost to create instances.
  final pulumi.Input<int>? spotInstancePoolsToUseCount;
  /// The target capacity of preemptible instances in the auto provisioning group.
  final pulumi.Input<String>? spotTargetCapacity;
  /// Specifies whether to release instances of the auto provisioning group. Valid values:`false` and `true`, default value: `false`.
  final pulumi.Input<bool>? terminateInstances;
  /// The shutdown policy for preemptible instances when the auto provisioning group expires. Valid values: `false` and `true`, default value: `false`.
  final pulumi.Input<bool>? terminateInstancesWithExpiration;
  /// The total target capacity of the auto provisioning group. The target capacity consists of the following three parts:PayAsYouGoTargetCapacity,SpotTargetCapacity and the supplemental capacity besides PayAsYouGoTargetCapacity and SpotTargetCapacity.
  final pulumi.Input<String> totalTargetCapacity;
  /// The time when the auto provisioning group is started. The period of time between this point in time and the point in time specified by the `valid_until` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group is immediately started after creation.
  final pulumi.Input<String>? validFrom;
  /// The time when the auto provisioning group expires. The period of time between this point in time and the point in time specified by the `valid_from` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group never expires.
  final pulumi.Input<String>? validUntil;

  /// Creates a new [AutoProvisioningGroupArgs].
  /// [autoProvisioningGroupName] The name of the auto provisioning group to be created. It must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-)
  /// [autoProvisioningGroupType] The type of the auto provisioning group. Valid values:`request` and `maintain`,Default value: `maintain`.
  /// [defaultTargetCapacityType] The type of supplemental instances. When the total value of `PayAsYouGoTargetCapacity` and `SpotTargetCapacity` is smaller than the value of TotalTargetCapacity, the auto provisioning group will create instances of the specified type to meet the capacity requirements. Valid values:`PayAsYouGo`: Pay-as-you-go instances; `Spot`: Preemptible instances, Default value: `Spot`.
  /// [description] The description of the auto provisioning group.
  /// [excessCapacityTerminationPolicy] The shutdown policy for excess preemptible instances followed when the capacity of the auto provisioning group exceeds the target capacity. Valid values: `no-termination` and `termination`,Default value: `no-termination`.
  /// [launchTemplateConfigs] DataDisk mappings to attach to ecs instance. See `block-config` below for details.
  /// [launchTemplateId] The ID of the instance launch template associated with the auto provisioning group.
  /// [launchTemplateVersion] The version of the instance launch template associated with the auto provisioning group.
  /// [maxSpotPrice] The global maximum price for preemptible instances in the auto provisioning group. If both the `MaxSpotPrice` and `LaunchTemplateConfig.N.MaxPrice` parameters are specified, the maximum price is the lower value of the two.
  /// [payAsYouGoAllocationStrategy] The scale-out policy for pay-as-you-go instances. Valid values: `lowest-price` and `prioritized`,Default value: `lowest-price`.
  /// [payAsYouGoTargetCapacity] The target capacity of pay-as-you-go instances in the auto provisioning group.
  /// [spotAllocationStrategy] The scale-out policy for preemptible instances. Valid values:`lowest-price` and `diversified`,Default value: `lowest-price`.
  /// [spotInstanceInterruptionBehavior] The default behavior after preemptible instances are shut down. Valid values: `stop` and `terminate`,Default value: `stop`.
  /// [spotInstancePoolsToUseCount] This parameter takes effect when the `SpotAllocationStrategy` parameter is set to `lowest-price`. The auto provisioning group selects instance types of the lowest cost to create instances.
  /// [spotTargetCapacity] The target capacity of preemptible instances in the auto provisioning group.
  /// [terminateInstances] Specifies whether to release instances of the auto provisioning group. Valid values:`false` and `true`, default value: `false`.
  /// [terminateInstancesWithExpiration] The shutdown policy for preemptible instances when the auto provisioning group expires. Valid values: `false` and `true`, default value: `false`.
  /// [totalTargetCapacity] The total target capacity of the auto provisioning group. The target capacity consists of the following three parts:PayAsYouGoTargetCapacity,SpotTargetCapacity and the supplemental capacity besides PayAsYouGoTargetCapacity and SpotTargetCapacity.
  /// [validFrom] The time when the auto provisioning group is started. The period of time between this point in time and the point in time specified by the `valid_until` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group is immediately started after creation.
  /// [validUntil] The time when the auto provisioning group expires. The period of time between this point in time and the point in time specified by the `valid_from` parameter is the effective time period of the auto provisioning group.By default, an auto provisioning group never expires.
  AutoProvisioningGroupArgs({
    String? autoProvisioningGroupName,
    String? autoProvisioningGroupType,
    String? defaultTargetCapacityType,
    String? description,
    String? excessCapacityTerminationPolicy,
    required List<AutoProvisioningGroupLaunchTemplateConfig> launchTemplateConfigs,
    required String launchTemplateId,
    String? launchTemplateVersion,
    double? maxSpotPrice,
    String? payAsYouGoAllocationStrategy,
    String? payAsYouGoTargetCapacity,
    String? spotAllocationStrategy,
    String? spotInstanceInterruptionBehavior,
    int? spotInstancePoolsToUseCount,
    String? spotTargetCapacity,
    bool? terminateInstances,
    bool? terminateInstancesWithExpiration,
    required String totalTargetCapacity,
    String? validFrom,
    String? validUntil,
  }) :
      autoProvisioningGroupName = pulumi.Input.asOptionalInput<String>(autoProvisioningGroupName),
      autoProvisioningGroupType = pulumi.Input.asOptionalInput<String>(autoProvisioningGroupType),
      defaultTargetCapacityType = pulumi.Input.asOptionalInput<String>(defaultTargetCapacityType),
      description = pulumi.Input.asOptionalInput<String>(description),
      excessCapacityTerminationPolicy = pulumi.Input.asOptionalInput<String>(excessCapacityTerminationPolicy),
      launchTemplateConfigs = pulumi.Input.asInput<List<AutoProvisioningGroupLaunchTemplateConfig>>(launchTemplateConfigs),
      launchTemplateId = pulumi.Input.asInput<String>(launchTemplateId),
      launchTemplateVersion = pulumi.Input.asOptionalInput<String>(launchTemplateVersion),
      maxSpotPrice = pulumi.Input.asOptionalInput<double>(maxSpotPrice),
      payAsYouGoAllocationStrategy = pulumi.Input.asOptionalInput<String>(payAsYouGoAllocationStrategy),
      payAsYouGoTargetCapacity = pulumi.Input.asOptionalInput<String>(payAsYouGoTargetCapacity),
      spotAllocationStrategy = pulumi.Input.asOptionalInput<String>(spotAllocationStrategy),
      spotInstanceInterruptionBehavior = pulumi.Input.asOptionalInput<String>(spotInstanceInterruptionBehavior),
      spotInstancePoolsToUseCount = pulumi.Input.asOptionalInput<int>(spotInstancePoolsToUseCount),
      spotTargetCapacity = pulumi.Input.asOptionalInput<String>(spotTargetCapacity),
      terminateInstances = pulumi.Input.asOptionalInput<bool>(terminateInstances),
      terminateInstancesWithExpiration = pulumi.Input.asOptionalInput<bool>(terminateInstancesWithExpiration),
      totalTargetCapacity = pulumi.Input.asInput<String>(totalTargetCapacity),
      validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
      validUntil = pulumi.Input.asOptionalInput<String>(validUntil);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvisioningGroupName': ?autoProvisioningGroupName,
      'autoProvisioningGroupType': ?autoProvisioningGroupType,
      'defaultTargetCapacityType': ?defaultTargetCapacityType,
      'description': ?description,
      'excessCapacityTerminationPolicy': ?excessCapacityTerminationPolicy,
      'launchTemplateConfigs': pulumi.Input.mapInputValue<List<AutoProvisioningGroupLaunchTemplateConfig>, List<Map<String, dynamic>>>(launchTemplateConfigs, (value) => pulumi.Input.encodeList<AutoProvisioningGroupLaunchTemplateConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplateId': launchTemplateId,
      'launchTemplateVersion': ?launchTemplateVersion,
      'maxSpotPrice': ?maxSpotPrice,
      'payAsYouGoAllocationStrategy': ?payAsYouGoAllocationStrategy,
      'payAsYouGoTargetCapacity': ?payAsYouGoTargetCapacity,
      'spotAllocationStrategy': ?spotAllocationStrategy,
      'spotInstanceInterruptionBehavior': ?spotInstanceInterruptionBehavior,
      'spotInstancePoolsToUseCount': ?spotInstancePoolsToUseCount,
      'spotTargetCapacity': ?spotTargetCapacity,
      'terminateInstances': ?terminateInstances,
      'terminateInstancesWithExpiration': ?terminateInstancesWithExpiration,
      'totalTargetCapacity': totalTargetCapacity,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
    };
  }

  factory AutoProvisioningGroupArgs.fromMap(Map<String, dynamic> map) {
    return AutoProvisioningGroupArgs(
      autoProvisioningGroupName: map['autoProvisioningGroupName'] == null ? null : map['autoProvisioningGroupName'] as String,
      autoProvisioningGroupType: map['autoProvisioningGroupType'] == null ? null : map['autoProvisioningGroupType'] as String,
      defaultTargetCapacityType: map['defaultTargetCapacityType'] == null ? null : map['defaultTargetCapacityType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      excessCapacityTerminationPolicy: map['excessCapacityTerminationPolicy'] == null ? null : map['excessCapacityTerminationPolicy'] as String,
      launchTemplateConfigs: pulumi.Input.decodeList<AutoProvisioningGroupLaunchTemplateConfig>(map['launchTemplateConfigs'], (value) => AutoProvisioningGroupLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>())),
      launchTemplateId: map['launchTemplateId'] as String,
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : map['launchTemplateVersion'] as String,
      maxSpotPrice: map['maxSpotPrice'] == null ? null : map['maxSpotPrice'] as double,
      payAsYouGoAllocationStrategy: map['payAsYouGoAllocationStrategy'] == null ? null : map['payAsYouGoAllocationStrategy'] as String,
      payAsYouGoTargetCapacity: map['payAsYouGoTargetCapacity'] == null ? null : map['payAsYouGoTargetCapacity'] as String,
      spotAllocationStrategy: map['spotAllocationStrategy'] == null ? null : map['spotAllocationStrategy'] as String,
      spotInstanceInterruptionBehavior: map['spotInstanceInterruptionBehavior'] == null ? null : map['spotInstanceInterruptionBehavior'] as String,
      spotInstancePoolsToUseCount: map['spotInstancePoolsToUseCount'] == null ? null : map['spotInstancePoolsToUseCount'] as int,
      spotTargetCapacity: map['spotTargetCapacity'] == null ? null : map['spotTargetCapacity'] as String,
      terminateInstances: map['terminateInstances'] == null ? null : map['terminateInstances'] as bool,
      terminateInstancesWithExpiration: map['terminateInstancesWithExpiration'] == null ? null : map['terminateInstancesWithExpiration'] as bool,
      totalTargetCapacity: map['totalTargetCapacity'] as String,
      validFrom: map['validFrom'] == null ? null : map['validFrom'] as String,
      validUntil: map['validUntil'] == null ? null : map['validUntil'] as String,
    );
  }
}

