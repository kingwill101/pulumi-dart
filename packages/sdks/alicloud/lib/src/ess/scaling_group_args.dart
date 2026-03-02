// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_alb_server_group.dart';
import 'scaling_group_launch_template_override.dart';

/// {@template pulumi_ess_scaling_group_scaling_group_args_doc}
/// The set of arguments for ScalingGroup.
/// {@endtemplate}
/// {@macro pulumi_ess_scaling_group_scaling_group_args_doc}
class ScalingGroupArgs {
  /// If a Serve ALB instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server ALB instance.  See `alb_server_group` below for details.
  final pulumi.Input<List<ScalingGroupAlbServerGroup>>? albServerGroups;
  /// The allocation policy of instances. Auto Scaling selects instance types based on the allocation policy to create instances. The policy can be applied to pay-as-you-go instances and preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  final pulumi.Input<String>? allocationStrategy;
  /// Specifies whether to enable automatic rebalancing for the scaling group. This parameter takes effect only when BalancedOnly is enabled for a zone-balanced scaling group. Valid values: false, true.
  final pulumi.Input<bool>? autoRebalance;
  /// Specifies whether to evenly distribute instances in the scaling group across multiple zones. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  final pulumi.Input<bool>? azBalance;
  /// The zone balancing mode. This parameter takes effect only when zone balancing is enabled. Valid values: BalancedBestEffort, BalancedOnly.
  final pulumi.Input<String>? balanceMode;
  /// Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  final pulumi.Input<bool>? capacityOptionsCompensateWithOnDemand;
  /// The minimum number of pay-as-you-go instances that must be contained in the scaling group. When the actual number of pay-as-you-go instances in the scaling group drops below the value of this parameter, Auto Scaling preferentially creates pay-as-you-go instances. Valid values: 0 to 1000. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 0.
  final pulumi.Input<int>? capacityOptionsOnDemandBaseCapacity;
  /// The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. 'on_demand_base_capacity' specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group. Valid values: 0 to 100. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 100.
  final pulumi.Input<int>? capacityOptionsOnDemandPercentageAboveBaseCapacity;
  /// The price comparison mode. Valid values: PricePerUnit,PricePerVCpu. Default value: PricePerUnit.
  final pulumi.Input<String>? capacityOptionsPriceComparisonMode;
  /// Specifies whether to replace pay-as-you-go instances with preemptible instances. If you specify 'compensate_with_on_demand', it may result in a higher percentage of pay-as-you-go instances compared to the value of 'on_demand_percentage_above_base_capacity'. If you specify this parameter, Auto Scaling preferentially deploys preemptible instances to replace the surplus pay-as-you-go instances when preemptible instance types are available. If you specify 'compensate_with_on_demand', Auto Scaling creates pay-as-you-go instances when preemptible instance types are insufficient. To avoid retaining these pay-as-you-go instances for extended periods, Auto Scaling attempts to replace them with preemptible instances when sufficient preemptible instance types become available. Valid values: true, false.
  final pulumi.Input<bool>? capacityOptionsSpotAutoReplaceOnDemand;
  /// Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  final pulumi.Input<bool>? compensateWithOnDemand;
  /// The ID of the elastic container instance.
  final pulumi.Input<String>? containerGroupId;
  /// If an RDS instance is specified in the scaling group, the scaling group automatically attaches the Intranet IP addresses of its ECS instances to the RDS access whitelist.
  /// - The specified RDS instance must be in running status.
  /// - The specified RDS instance’s whitelist must have room for more IP addresses.
  final pulumi.Input<List<String>>? dbInstanceIds;
  /// Default cool-down time (in seconds) of the scaling group. Value range: [0, 86400]. The default value is 300s.
  final pulumi.Input<int>? defaultCooldown;
  /// Expected number of ECS instances in the scaling group. Value range: [min_size, max_size].
  final pulumi.Input<int>? desiredCapacity;
  /// Specifies whether the scaling group deletion protection is enabled. `true` or `false`, Default value: `false`.
  final pulumi.Input<bool>? groupDeletionProtection;
  /// Resource type within scaling group. Optional values: ECS, ECI. Default to ECS.
  final pulumi.Input<String>? groupType;
  /// Resource type within scaling group. Optional values: ECS, ECI, NONE, LOAD_BALANCER. Default to ECS.
  final pulumi.Input<String>? healthCheckType;
  /// The health check modes of the scaling group. Valid values: ECS, NONE, LOAD_BALANCER.
  final pulumi.Input<List<String>>? healthCheckTypes;
  /// The ID of the instance from which Auto Scaling obtains the required configuration information and uses the information to automatically create a scaling configuration.
  final pulumi.Input<String>? instanceId;
  /// Instance launch template ID, scaling group obtains launch configuration from instance launch template, see [Launch Template](https://www.alibabacloud.com/help/doc-detail/73916.html). Creating scaling group from launch template enable group automatically.
  final pulumi.Input<String>? launchTemplateId;
  /// The details of the instance types that are specified by using the Extend Instance Type of Launch Template feature.  See `launch_template_override` below for details.
  final pulumi.Input<List<ScalingGroupLaunchTemplateOverride>>? launchTemplateOverrides;
  /// The version number of the launch template. Valid values are the version number, `Latest`, or `Default`, Default value: `Default`.
  final pulumi.Input<String>? launchTemplateVersion;
  /// If a Server Load Balancer instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server Load Balancer instance.
  /// - The Server Load Balancer instance must be enabled.
  /// - At least one listener must be configured for each Server Load Balancer and it HealthCheck must be on. Otherwise, creation will fail (it may be useful to add a `depends_on` argument
  /// targeting your `alicloud.slb.Listener` in order to make sure the listener with its HealthCheck configuration is ready before creating your scaling group).
  /// - The Server Load Balancer instance attached with VPC-type ECS instances cannot be attached to the scaling group.
  /// - The default weight of an ECS instance attached to the Server Load Balancer instance is 50.
  final pulumi.Input<List<String>>? loadbalancerIds;
  /// The maximum life span of an instance in the scaling group. Unit: seconds.
  final pulumi.Input<int>? maxInstanceLifetime;
  /// Maximum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// **NOTE:** From version 1.204.1, `max_size` can be set to `2000`.
  final pulumi.Input<int> maxSize;
  /// Minimum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// **NOTE:** From version 1.204.1, `min_size` can be set to `2000`.
  final pulumi.Input<int> minSize;
  /// Multi-AZ scaling group ECS instance expansion and contraction strategy. PRIORITY, COMPOSABLE, BALANCE or COST_OPTIMIZED(Available since v1.54.0).
  final pulumi.Input<String>? multiAzPolicy;
  /// The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales.
  final pulumi.Input<int>? onDemandBaseCapacity;
  /// Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond OnDemandBaseCapacity.
  final pulumi.Input<int>? onDemandPercentageAboveBaseCapacity;
  /// Set or unset instances within group into protected status.
  final pulumi.Input<List<String>>? protectedInstances;
  /// RemovalPolicy is used to select the ECS instances you want to remove from the scaling group when multiple candidates for removal exist. Optional values:
  /// - OldestInstance: removes the ECS instance that is added to the scaling group at the earliest point in time.
  /// - NewestInstance: removes the ECS instance that is added to the scaling group at the latest point in time.
  /// - OldestScalingConfiguration: removes the ECS instance that is created based on the earliest scaling configuration.
  /// - Default values: Default value of RemovalPolicy.1: OldestScalingConfiguration. Default value of RemovalPolicy.2: OldestInstance.
  final pulumi.Input<List<String>>? removalPolicies;
  /// The ID of the resource group to which you want to add the scaling group.
  final pulumi.Input<String>? resourceGroupId;
  /// Name shown for the scaling group, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain numbers, underscores `_`, hyphens `-`, and decimal points `.`. If this parameter is not specified, the default value is ScalingGroupId.
  final pulumi.Input<String>? scalingGroupName;
  /// The reclaim mode of the scaling group. Optional values: recycle, release, forceRecycle, forceRelease.
  final pulumi.Input<String>? scalingPolicy;
  /// The allocation policy of preemptible instances. You can use this parameter to individually specify the allocation policy for preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  final pulumi.Input<String>? spotAllocationStrategy;
  /// The number of Spot pools to use to allocate your Spot capacity. The Spot pools is composed of instance types of lowest price.
  final pulumi.Input<int>? spotInstancePools;
  /// Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  final pulumi.Input<bool>? spotInstanceRemedy;
  /// The period of time required by the ECS instance to enter the Stopped state. Unit: seconds. Valid values: 30 to 240.
  final pulumi.Input<int>? stopInstanceTimeout;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// It has been deprecated from version 1.7.1 and new field 'vswitch_ids' replaces it.
  final pulumi.Input<String>? vswitchId;
  /// List of virtual switch IDs in which the ecs instances to be launched.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [ScalingGroupArgs].
  /// [albServerGroups] If a Serve ALB instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server ALB instance.  See `alb_server_group` below for details.
  /// [allocationStrategy] The allocation policy of instances. Auto Scaling selects instance types based on the allocation policy to create instances. The policy can be applied to pay-as-you-go instances and preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  /// [autoRebalance] Specifies whether to enable automatic rebalancing for the scaling group. This parameter takes effect only when BalancedOnly is enabled for a zone-balanced scaling group. Valid values: false, true.
  /// [azBalance] Specifies whether to evenly distribute instances in the scaling group across multiple zones. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  /// [balanceMode] The zone balancing mode. This parameter takes effect only when zone balancing is enabled. Valid values: BalancedBestEffort, BalancedOnly.
  /// [capacityOptionsCompensateWithOnDemand] Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  /// [capacityOptionsOnDemandBaseCapacity] The minimum number of pay-as-you-go instances that must be contained in the scaling group. When the actual number of pay-as-you-go instances in the scaling group drops below the value of this parameter, Auto Scaling preferentially creates pay-as-you-go instances. Valid values: 0 to 1000. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 0.
  /// [capacityOptionsOnDemandPercentageAboveBaseCapacity] The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. 'on_demand_base_capacity' specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group. Valid values: 0 to 100. If you set 'multi_az_policy' to COMPOSABLE, the default value of this parameter is 100.
  /// [capacityOptionsPriceComparisonMode] The price comparison mode. Valid values: PricePerUnit,PricePerVCpu. Default value: PricePerUnit.
  /// [capacityOptionsSpotAutoReplaceOnDemand] Specifies whether to replace pay-as-you-go instances with preemptible instances. If you specify 'compensate_with_on_demand', it may result in a higher percentage of pay-as-you-go instances compared to the value of 'on_demand_percentage_above_base_capacity'. If you specify this parameter, Auto Scaling preferentially deploys preemptible instances to replace the surplus pay-as-you-go instances when preemptible instance types are available. If you specify 'compensate_with_on_demand', Auto Scaling creates pay-as-you-go instances when preemptible instance types are insufficient. To avoid retaining these pay-as-you-go instances for extended periods, Auto Scaling attempts to replace them with preemptible instances when sufficient preemptible instance types become available. Valid values: true, false.
  /// [compensateWithOnDemand] Specifies whether to automatically create pay-as-you-go instances to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is supported only if you set 'multi_az_policy' to COST_OPTIMIZED. Valid values: true, false.
  /// [containerGroupId] The ID of the elastic container instance.
  /// [dbInstanceIds] If an RDS instance is specified in the scaling group, the scaling group automatically attaches the Intranet IP addresses of its ECS instances to the RDS access whitelist.
  /// [defaultCooldown] Default cool-down time (in seconds) of the scaling group. Value range: [0, 86400]. The default value is 300s.
  /// [desiredCapacity] Expected number of ECS instances in the scaling group. Value range: [min_size, max_size].
  /// [groupDeletionProtection] Specifies whether the scaling group deletion protection is enabled. `true` or `false`, Default value: `false`.
  /// [groupType] Resource type within scaling group. Optional values: ECS, ECI. Default to ECS.
  /// [healthCheckType] Resource type within scaling group. Optional values: ECS, ECI, NONE, LOAD_BALANCER. Default to ECS.
  /// [healthCheckTypes] The health check modes of the scaling group. Valid values: ECS, NONE, LOAD_BALANCER.
  /// [instanceId] The ID of the instance from which Auto Scaling obtains the required configuration information and uses the information to automatically create a scaling configuration.
  /// [launchTemplateId] Instance launch template ID, scaling group obtains launch configuration from instance launch template, see [Launch Template](https://www.alibabacloud.com/help/doc-detail/73916.html). Creating scaling group from launch template enable group automatically.
  /// [launchTemplateOverrides] The details of the instance types that are specified by using the Extend Instance Type of Launch Template feature.  See `launch_template_override` below for details.
  /// [launchTemplateVersion] The version number of the launch template. Valid values are the version number, `Latest`, or `Default`, Default value: `Default`.
  /// [loadbalancerIds] If a Server Load Balancer instance is specified in the scaling group, the scaling group automatically attaches its ECS instances to the Server Load Balancer instance.
  /// [maxInstanceLifetime] The maximum life span of an instance in the scaling group. Unit: seconds.
  /// [maxSize] Maximum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// [minSize] Minimum number of ECS instances in the scaling group. Value range: [0, 2000].
  /// [multiAzPolicy] Multi-AZ scaling group ECS instance expansion and contraction strategy. PRIORITY, COMPOSABLE, BALANCE or COST_OPTIMIZED(Available since v1.54.0).
  /// [onDemandBaseCapacity] The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales.
  /// [onDemandPercentageAboveBaseCapacity] Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond OnDemandBaseCapacity.
  /// [protectedInstances] Set or unset instances within group into protected status.
  /// [removalPolicies] RemovalPolicy is used to select the ECS instances you want to remove from the scaling group when multiple candidates for removal exist. Optional values:
  /// [resourceGroupId] The ID of the resource group to which you want to add the scaling group.
  /// [scalingGroupName] Name shown for the scaling group, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain numbers, underscores `_`, hyphens `-`, and decimal points `.`. If this parameter is not specified, the default value is ScalingGroupId.
  /// [scalingPolicy] The reclaim mode of the scaling group. Optional values: recycle, release, forceRecycle, forceRelease.
  /// [spotAllocationStrategy] The allocation policy of preemptible instances. You can use this parameter to individually specify the allocation policy for preemptible instances. This parameter takes effect only if you set MultiAZPolicy to COMPOSABLE.
  /// [spotInstancePools] The number of Spot pools to use to allocate your Spot capacity. The Spot pools is composed of instance types of lowest price.
  /// [spotInstanceRemedy] Whether to replace spot instances with newly created spot/onDemand instance when receive a spot recycling message.
  /// [stopInstanceTimeout] The period of time required by the ECS instance to enter the Stopped state. Unit: seconds. Valid values: 30 to 240.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] It has been deprecated from version 1.7.1 and new field 'vswitch_ids' replaces it.
  /// [vswitchIds] List of virtual switch IDs in which the ecs instances to be launched.
  ScalingGroupArgs({
    this.albServerGroups,
    this.allocationStrategy,
    this.autoRebalance,
    this.azBalance,
    this.balanceMode,
    this.capacityOptionsCompensateWithOnDemand,
    this.capacityOptionsOnDemandBaseCapacity,
    this.capacityOptionsOnDemandPercentageAboveBaseCapacity,
    this.capacityOptionsPriceComparisonMode,
    this.capacityOptionsSpotAutoReplaceOnDemand,
    this.compensateWithOnDemand,
    this.containerGroupId,
    this.dbInstanceIds,
    this.defaultCooldown,
    this.desiredCapacity,
    this.groupDeletionProtection,
    this.groupType,
    this.healthCheckType,
    this.healthCheckTypes,
    this.instanceId,
    this.launchTemplateId,
    this.launchTemplateOverrides,
    this.launchTemplateVersion,
    this.loadbalancerIds,
    this.maxInstanceLifetime,
    required this.maxSize,
    required this.minSize,
    this.multiAzPolicy,
    this.onDemandBaseCapacity,
    this.onDemandPercentageAboveBaseCapacity,
    this.protectedInstances,
    this.removalPolicies,
    this.resourceGroupId,
    this.scalingGroupName,
    this.scalingPolicy,
    this.spotAllocationStrategy,
    this.spotInstancePools,
    this.spotInstanceRemedy,
    this.stopInstanceTimeout,
    this.tags,
    this.vswitchId,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albServerGroups': ?pulumi.Input.mapOptionalInputValue<List<ScalingGroupAlbServerGroup>, List<Map<String, dynamic>>>(albServerGroups, (value) => pulumi.Input.encodeList<ScalingGroupAlbServerGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allocationStrategy': ?allocationStrategy,
      'autoRebalance': ?autoRebalance,
      'azBalance': ?azBalance,
      'balanceMode': ?balanceMode,
      'capacityOptionsCompensateWithOnDemand': ?capacityOptionsCompensateWithOnDemand,
      'capacityOptionsOnDemandBaseCapacity': ?capacityOptionsOnDemandBaseCapacity,
      'capacityOptionsOnDemandPercentageAboveBaseCapacity': ?capacityOptionsOnDemandPercentageAboveBaseCapacity,
      'capacityOptionsPriceComparisonMode': ?capacityOptionsPriceComparisonMode,
      'capacityOptionsSpotAutoReplaceOnDemand': ?capacityOptionsSpotAutoReplaceOnDemand,
      'compensateWithOnDemand': ?compensateWithOnDemand,
      'containerGroupId': ?containerGroupId,
      'dbInstanceIds': ?dbInstanceIds,
      'defaultCooldown': ?defaultCooldown,
      'desiredCapacity': ?desiredCapacity,
      'groupDeletionProtection': ?groupDeletionProtection,
      'groupType': ?groupType,
      'healthCheckType': ?healthCheckType,
      'healthCheckTypes': ?healthCheckTypes,
      'instanceId': ?instanceId,
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateOverrides': ?pulumi.Input.mapOptionalInputValue<List<ScalingGroupLaunchTemplateOverride>, List<Map<String, dynamic>>>(launchTemplateOverrides, (value) => pulumi.Input.encodeList<ScalingGroupLaunchTemplateOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplateVersion': ?launchTemplateVersion,
      'loadbalancerIds': ?loadbalancerIds,
      'maxInstanceLifetime': ?maxInstanceLifetime,
      'maxSize': maxSize,
      'minSize': minSize,
      'multiAzPolicy': ?multiAzPolicy,
      'onDemandBaseCapacity': ?onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity': ?onDemandPercentageAboveBaseCapacity,
      'protectedInstances': ?protectedInstances,
      'removalPolicies': ?removalPolicies,
      'resourceGroupId': ?resourceGroupId,
      'scalingGroupName': ?scalingGroupName,
      'scalingPolicy': ?scalingPolicy,
      'spotAllocationStrategy': ?spotAllocationStrategy,
      'spotInstancePools': ?spotInstancePools,
      'spotInstanceRemedy': ?spotInstanceRemedy,
      'stopInstanceTimeout': ?stopInstanceTimeout,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory ScalingGroupArgs.fromMap(Map<String, dynamic> map) {
    return ScalingGroupArgs(
      albServerGroups: map['albServerGroups'] == null ? null : (pulumi.Input.decodeList<ScalingGroupAlbServerGroup>(map['albServerGroups']!, (value) => ScalingGroupAlbServerGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      allocationStrategy: map['allocationStrategy'] == null ? null : (map['allocationStrategy']! as String).input(),
      autoRebalance: map['autoRebalance'] == null ? null : (map['autoRebalance']! as bool).input(),
      azBalance: map['azBalance'] == null ? null : (map['azBalance']! as bool).input(),
      balanceMode: map['balanceMode'] == null ? null : (map['balanceMode']! as String).input(),
      capacityOptionsCompensateWithOnDemand: map['capacityOptionsCompensateWithOnDemand'] == null ? null : (map['capacityOptionsCompensateWithOnDemand']! as bool).input(),
      capacityOptionsOnDemandBaseCapacity: map['capacityOptionsOnDemandBaseCapacity'] == null ? null : (map['capacityOptionsOnDemandBaseCapacity']! as int).input(),
      capacityOptionsOnDemandPercentageAboveBaseCapacity: map['capacityOptionsOnDemandPercentageAboveBaseCapacity'] == null ? null : (map['capacityOptionsOnDemandPercentageAboveBaseCapacity']! as int).input(),
      capacityOptionsPriceComparisonMode: map['capacityOptionsPriceComparisonMode'] == null ? null : (map['capacityOptionsPriceComparisonMode']! as String).input(),
      capacityOptionsSpotAutoReplaceOnDemand: map['capacityOptionsSpotAutoReplaceOnDemand'] == null ? null : (map['capacityOptionsSpotAutoReplaceOnDemand']! as bool).input(),
      compensateWithOnDemand: map['compensateWithOnDemand'] == null ? null : (map['compensateWithOnDemand']! as bool).input(),
      containerGroupId: map['containerGroupId'] == null ? null : (map['containerGroupId']! as String).input(),
      dbInstanceIds: map['dbInstanceIds'] == null ? null : ((map['dbInstanceIds']! as List).cast<String>()).input(),
      defaultCooldown: map['defaultCooldown'] == null ? null : (map['defaultCooldown']! as int).input(),
      desiredCapacity: map['desiredCapacity'] == null ? null : (map['desiredCapacity']! as int).input(),
      groupDeletionProtection: map['groupDeletionProtection'] == null ? null : (map['groupDeletionProtection']! as bool).input(),
      groupType: map['groupType'] == null ? null : (map['groupType']! as String).input(),
      healthCheckType: map['healthCheckType'] == null ? null : (map['healthCheckType']! as String).input(),
      healthCheckTypes: map['healthCheckTypes'] == null ? null : ((map['healthCheckTypes']! as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      launchTemplateId: map['launchTemplateId'] == null ? null : (map['launchTemplateId']! as String).input(),
      launchTemplateOverrides: map['launchTemplateOverrides'] == null ? null : (pulumi.Input.decodeList<ScalingGroupLaunchTemplateOverride>(map['launchTemplateOverrides']!, (value) => ScalingGroupLaunchTemplateOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : (map['launchTemplateVersion']! as String).input(),
      loadbalancerIds: map['loadbalancerIds'] == null ? null : ((map['loadbalancerIds']! as List).cast<String>()).input(),
      maxInstanceLifetime: map['maxInstanceLifetime'] == null ? null : (map['maxInstanceLifetime']! as int).input(),
      maxSize: (map['maxSize'] as int).input(),
      minSize: (map['minSize'] as int).input(),
      multiAzPolicy: map['multiAzPolicy'] == null ? null : (map['multiAzPolicy']! as String).input(),
      onDemandBaseCapacity: map['onDemandBaseCapacity'] == null ? null : (map['onDemandBaseCapacity']! as int).input(),
      onDemandPercentageAboveBaseCapacity: map['onDemandPercentageAboveBaseCapacity'] == null ? null : (map['onDemandPercentageAboveBaseCapacity']! as int).input(),
      protectedInstances: map['protectedInstances'] == null ? null : ((map['protectedInstances']! as List).cast<String>()).input(),
      removalPolicies: map['removalPolicies'] == null ? null : ((map['removalPolicies']! as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      scalingGroupName: map['scalingGroupName'] == null ? null : (map['scalingGroupName']! as String).input(),
      scalingPolicy: map['scalingPolicy'] == null ? null : (map['scalingPolicy']! as String).input(),
      spotAllocationStrategy: map['spotAllocationStrategy'] == null ? null : (map['spotAllocationStrategy']! as String).input(),
      spotInstancePools: map['spotInstancePools'] == null ? null : (map['spotInstancePools']! as int).input(),
      spotInstanceRemedy: map['spotInstanceRemedy'] == null ? null : (map['spotInstanceRemedy']! as bool).input(),
      stopInstanceTimeout: map['stopInstanceTimeout'] == null ? null : (map['stopInstanceTimeout']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds']! as List).cast<String>()).input(),
    );
  }
}

