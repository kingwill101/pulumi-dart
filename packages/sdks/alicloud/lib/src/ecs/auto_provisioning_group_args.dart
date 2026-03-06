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
  const AutoProvisioningGroupArgs({
    this.autoProvisioningGroupName,
    this.autoProvisioningGroupType,
    this.defaultTargetCapacityType,
    this.description,
    this.excessCapacityTerminationPolicy,
    required this.launchTemplateConfigs,
    required this.launchTemplateId,
    this.launchTemplateVersion,
    this.maxSpotPrice,
    this.payAsYouGoAllocationStrategy,
    this.payAsYouGoTargetCapacity,
    this.spotAllocationStrategy,
    this.spotInstanceInterruptionBehavior,
    this.spotInstancePoolsToUseCount,
    this.spotTargetCapacity,
    this.terminateInstances,
    this.terminateInstancesWithExpiration,
    required this.totalTargetCapacity,
    this.validFrom,
    this.validUntil,
  });

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
      autoProvisioningGroupName: (() { final guardedValue = map['autoProvisioningGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoProvisioningGroupType: (() { final guardedValue = map['autoProvisioningGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTargetCapacityType: (() { final guardedValue = map['defaultTargetCapacityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excessCapacityTerminationPolicy: (() { final guardedValue = map['excessCapacityTerminationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoProvisioningGroupLaunchTemplateConfig>(map['launchTemplateConfigs']!, (value) => AutoProvisioningGroupLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>()))),
      launchTemplateId: pulumi.Input.fromValue(map['launchTemplateId'] as String),
      launchTemplateVersion: (() { final guardedValue = map['launchTemplateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSpotPrice: (() { final guardedValue = map['maxSpotPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      payAsYouGoAllocationStrategy: (() { final guardedValue = map['payAsYouGoAllocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payAsYouGoTargetCapacity: (() { final guardedValue = map['payAsYouGoTargetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotAllocationStrategy: (() { final guardedValue = map['spotAllocationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotInstanceInterruptionBehavior: (() { final guardedValue = map['spotInstanceInterruptionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotInstancePoolsToUseCount: (() { final guardedValue = map['spotInstancePoolsToUseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      spotTargetCapacity: (() { final guardedValue = map['spotTargetCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminateInstances: (() { final guardedValue = map['terminateInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminateInstancesWithExpiration: (() { final guardedValue = map['terminateInstancesWithExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      totalTargetCapacity: pulumi.Input.fromValue(map['totalTargetCapacity'] as String),
      validFrom: (() { final guardedValue = map['validFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validUntil: (() { final guardedValue = map['validUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

