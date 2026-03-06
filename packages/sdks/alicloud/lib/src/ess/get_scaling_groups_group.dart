// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_groups_group_launch_template_override.dart';

class GetScalingGroupsGroup {
  /// Number of active instances in scaling group.
  final pulumi.Input<int> activeCapacity;
  /// Active scaling configuration for scaling group.
  final pulumi.Input<String> activeScalingConfiguration;
  /// (Available since v1.242.0) The allocation policy of instances. Auto Scaling selects instance types based on the allocation policy to create instances. The allocation policy applies to pay-as-you-go and preemptible instances.
  final pulumi.Input<String> allocationStrategy;
  /// (Available since v1.242.0) Indicates whether instances in the scaling group are evenly distributed across multiple zones.
  final pulumi.Input<bool> azBalance;
  /// (Available since v1.249.0) Indicates whether pay-as-you-go instances can be automatically created to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is available only if you set MultiAZPolicy to COST_OPTIMIZED. Valid values: true, false.
  final pulumi.Input<bool> capacityOptionsCompensateWithOnDemand;
  /// (Available since v1.249.0) The minimum number of pay-as-you-go instances required in the scaling group. When the actual number of pay-as-you-go instances drops below the minimum threshold, Auto Scaling preferentially creates pay-as-you-go instances. Valid values: 0 to 1000.
  final pulumi.Input<int> capacityOptionsOnDemandBaseCapacity;
  /// (Available since v1.249.0) The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. OnDemandBaseCapacity specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group. Valid values: 0 to 100.
  final pulumi.Input<int> capacityOptionsOnDemandPercentageAboveBaseCapacity;
  /// (Available since v1.249.0) Indicates whether pay-as-you-go instances can be replaced with preemptible instances. If you specify CompensateWithOnDemand, it may result in a higher percentage of pay-as-you-go instances compared to the value of OnDemandPercentageAboveBaseCapacity. If you specify this parameter, Auto Scaling preferentially deploys preemptible instances to replace the surplus pay-as-you-go instances when preemptible instance types are available. If you specify CompensateWithOnDemand, Auto Scaling creates pay-as-you-go instances when preemptible instance types are insufficient. To avoid retaining these pay-as-you-go instances for extended periods, Auto Scaling attempts to replace them with preemptible instances when sufficient preemptible instance types become available. Valid values: true, false.
  final pulumi.Input<bool> capacityOptionsSpotAutoReplaceOnDemand;
  /// (Available since v1.249.0) Indicates whether pay-as-you-go instances can be automatically created to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is available only if you set MultiAZPolicy to COST_OPTIMIZED. Valid values: true, false.
  final pulumi.Input<bool> compensateWithOnDemand;
  /// Default cooldown time of scaling group.
  final pulumi.Input<int> cooldownTime;
  /// Creation time of scaling group.
  final pulumi.Input<String> creationTime;
  /// Db instances id which the ECS instance attached to.
  final pulumi.Input<List<String>> dbInstanceIds;
  /// (Available since v1.242.0) The expected number of ECS instances in the scaling group. Auto Scaling automatically maintains the expected number of ECS instances that you specified.
  final pulumi.Input<int> desiredCapacity;
  /// (Available since v1.242.0) Indicates whether the Expected Number of Instances feature is enabled.
  final pulumi.Input<bool> enableDesiredCapacity;
  /// Whether the scaling group deletion protection is enabled.
  final pulumi.Input<bool> groupDeletionProtection;
  /// (Available since v1.242.0) The type of the instances in the scaling group.
  final pulumi.Input<String> groupType;
  /// The health check method of the scaling group.
  final pulumi.Input<String> healthCheckType;
  /// ID of the scaling group.
  final pulumi.Input<String> id;
  /// (Available since v1.242.0) The number of instances that are in the Initialized state and ready to be scaled out in the scaling group.
  final pulumi.Input<int> initCapacity;
  /// Active launch template ID for scaling group.
  final pulumi.Input<String> launchTemplateId;
  /// (Available since v1.249.0) The instance types that are specified by using the Extend Launch Template feature.
  final pulumi.Input<List<GetScalingGroupsGroupLaunchTemplateOverride>> launchTemplateOverrides;
  /// Version of active launch template.
  final pulumi.Input<String> launchTemplateVersion;
  /// Lifecycle state of scaling group.
  final pulumi.Input<String> lifecycleState;
  /// Slb instances id which the ECS instance attached to.
  final pulumi.Input<List<String>> loadBalancerIds;
  /// (Available since v1.242.0) The maximum life span of each instance in the scaling group. Unit: seconds.
  final pulumi.Input<int> maxInstanceLifetime;
  /// The maximum number of ECS instances.
  final pulumi.Input<int> maxSize;
  /// The minimum number of ECS instances.
  final pulumi.Input<int> minSize;
  /// The modification time.
  final pulumi.Input<String> modificationTime;
  /// (Available since v1.242.0) The ID of the CloudMonitor application group that is associated with the scaling group.
  final pulumi.Input<String> monitorGroupId;
  /// (Available since v1.242.0) The scaling policy of the multi-zone scaling group of the ECS type.
  final pulumi.Input<String> multiAzPolicy;
  /// Name of the scaling group.
  final pulumi.Input<String> name;
  /// (Available since v1.242.0) The lower limit of the number of pay-as-you-go instances in the scaling group.
  final pulumi.Input<int> onDemandBaseCapacity;
  /// (Available since v1.242.0) The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. OnDemandBaseCapacity specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group.
  final pulumi.Input<int> onDemandPercentageAboveBaseCapacity;
  /// (Available since v1.242.0) The number of ECS instances that are being added to the scaling group and still being configured.
  final pulumi.Input<int> pendingCapacity;
  /// (Available since v1.242.0) The number of ECS instances that are in the Pending Add state in the scaling group.
  final pulumi.Input<int> pendingWaitCapacity;
  /// (Available since v1.242.0) The number of ECS instances that are in the Protected state in the scaling group.
  final pulumi.Input<int> protectedCapacity;
  /// Region ID the scaling group belongs to.
  final pulumi.Input<String> regionId;
  /// Removal policy used to select the ECS instance to remove from the scaling group.
  final pulumi.Input<List<String>> removalPolicies;
  /// (Available since v1.242.0) The number of ECS instances that are being removed from the scaling group.
  final pulumi.Input<int> removingCapacity;
  /// (Available since v1.242.0) The number of ECS instances that are in the Pending Remove state in the scaling group.
  final pulumi.Input<int> removingWaitCapacity;
  /// (Available since v1.242.0) The ID of the resource group to which the scaling group that you want to query belongs.
  final pulumi.Input<String> resourceGroupId;
  /// (Available since v1.242.0) The reclaim mode of the scaling group.
  final pulumi.Input<String> scalingPolicy;
  /// (Available since v1.242.0) The allocation policy of preemptible instances. This parameter indicates the method used by Auto Scaling to select instance types to create the required number of preemptible instances. This parameter takes effect only if you set multi_az_policy to COMPOSABLE.
  final pulumi.Input<String> spotAllocationStrategy;
  /// (Available since v1.242.0) The number of preemptible instances in the scaling group.
  final pulumi.Input<int> spotCapacity;
  /// (Available since v1.242.0) The number of instance types. Auto Scaling creates preemptible instances of multiple instance types that are provided at the lowest price.
  final pulumi.Input<int> spotInstancePools;
  /// (Available since v1.242.0) Indicates whether supplementation of preemptible instances is enabled. If this parameter is set to true, Auto Scaling creates an instance to replace a preemptible instance when Auto Scaling receives a system message indicating that the preemptible instance is to be reclaimed.
  final pulumi.Input<bool> spotInstanceRemedy;
  /// (Available since v1.242.0) The number of instances that are in the Standby state in the scaling group.
  final pulumi.Input<int> standbyCapacity;
  /// (Available since v1.242.0) The period of time that is required by an ECS instance to enter the Stopped state during the scale-in process. Unit: seconds.
  final pulumi.Input<int> stopInstanceTimeout;
  /// (Available since v1.242.0) The number of instances that are in Economical Mode in the scaling group.
  final pulumi.Input<int> stoppedCapacity;
  /// The Process in suspension.
  final pulumi.Input<List<String>> suspendedProcesses;
  /// (Available since v1.242.0) Indicates whether Auto Scaling stops executing the scaling operation in the scaling group.
  final pulumi.Input<bool> systemSuspended;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Number of instances in scaling group.
  final pulumi.Input<int> totalCapacity;
  /// The number of all ECS instances in the scaling group.
  final pulumi.Input<int> totalInstanceCount;
  /// The ID of the VPC to which the scaling group belongs.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch to which the scaling group belongs.
  final pulumi.Input<String> vswitchId;
  /// Vswitches id in which the ECS instance launched.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetScalingGroupsGroup].
  /// [activeCapacity] Number of active instances in scaling group.
  /// [activeScalingConfiguration] Active scaling configuration for scaling group.
  /// [allocationStrategy] (Available since v1.242.0) The allocation policy of instances. Auto Scaling selects instance types based on the allocation policy to create instances. The allocation policy applies to pay-as-you-go and preemptible instances.
  /// [azBalance] (Available since v1.242.0) Indicates whether instances in the scaling group are evenly distributed across multiple zones.
  /// [capacityOptionsCompensateWithOnDemand] (Available since v1.249.0) Indicates whether pay-as-you-go instances can be automatically created to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is available only if you set MultiAZPolicy to COST_OPTIMIZED. Valid values: true, false.
  /// [capacityOptionsOnDemandBaseCapacity] (Available since v1.249.0) The minimum number of pay-as-you-go instances required in the scaling group. When the actual number of pay-as-you-go instances drops below the minimum threshold, Auto Scaling preferentially creates pay-as-you-go instances. Valid values: 0 to 1000.
  /// [capacityOptionsOnDemandPercentageAboveBaseCapacity] (Available since v1.249.0) The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. OnDemandBaseCapacity specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group. Valid values: 0 to 100.
  /// [capacityOptionsSpotAutoReplaceOnDemand] (Available since v1.249.0) Indicates whether pay-as-you-go instances can be replaced with preemptible instances. If you specify CompensateWithOnDemand, it may result in a higher percentage of pay-as-you-go instances compared to the value of OnDemandPercentageAboveBaseCapacity. If you specify this parameter, Auto Scaling preferentially deploys preemptible instances to replace the surplus pay-as-you-go instances when preemptible instance types are available. If you specify CompensateWithOnDemand, Auto Scaling creates pay-as-you-go instances when preemptible instance types are insufficient. To avoid retaining these pay-as-you-go instances for extended periods, Auto Scaling attempts to replace them with preemptible instances when sufficient preemptible instance types become available. Valid values: true, false.
  /// [compensateWithOnDemand] (Available since v1.249.0) Indicates whether pay-as-you-go instances can be automatically created to meet the requirement on the number of ECS instances when the expected capacity of preemptible instances cannot be provided due to reasons such as cost-related issues and insufficient resources. This parameter is available only if you set MultiAZPolicy to COST_OPTIMIZED. Valid values: true, false.
  /// [cooldownTime] Default cooldown time of scaling group.
  /// [creationTime] Creation time of scaling group.
  /// [dbInstanceIds] Db instances id which the ECS instance attached to.
  /// [desiredCapacity] (Available since v1.242.0) The expected number of ECS instances in the scaling group. Auto Scaling automatically maintains the expected number of ECS instances that you specified.
  /// [enableDesiredCapacity] (Available since v1.242.0) Indicates whether the Expected Number of Instances feature is enabled.
  /// [groupDeletionProtection] Whether the scaling group deletion protection is enabled.
  /// [groupType] (Available since v1.242.0) The type of the instances in the scaling group.
  /// [healthCheckType] The health check method of the scaling group.
  /// [id] ID of the scaling group.
  /// [initCapacity] (Available since v1.242.0) The number of instances that are in the Initialized state and ready to be scaled out in the scaling group.
  /// [launchTemplateId] Active launch template ID for scaling group.
  /// [launchTemplateOverrides] (Available since v1.249.0) The instance types that are specified by using the Extend Launch Template feature.
  /// [launchTemplateVersion] Version of active launch template.
  /// [lifecycleState] Lifecycle state of scaling group.
  /// [loadBalancerIds] Slb instances id which the ECS instance attached to.
  /// [maxInstanceLifetime] (Available since v1.242.0) The maximum life span of each instance in the scaling group. Unit: seconds.
  /// [maxSize] The maximum number of ECS instances.
  /// [minSize] The minimum number of ECS instances.
  /// [modificationTime] The modification time.
  /// [monitorGroupId] (Available since v1.242.0) The ID of the CloudMonitor application group that is associated with the scaling group.
  /// [multiAzPolicy] (Available since v1.242.0) The scaling policy of the multi-zone scaling group of the ECS type.
  /// [name] Name of the scaling group.
  /// [onDemandBaseCapacity] (Available since v1.242.0) The lower limit of the number of pay-as-you-go instances in the scaling group.
  /// [onDemandPercentageAboveBaseCapacity] (Available since v1.242.0) The percentage of pay-as-you-go instances in the excess instances when the minimum number of pay-as-you-go instances is reached. OnDemandBaseCapacity specifies the minimum number of pay-as-you-go instances that must be contained in the scaling group.
  /// [pendingCapacity] (Available since v1.242.0) The number of ECS instances that are being added to the scaling group and still being configured.
  /// [pendingWaitCapacity] (Available since v1.242.0) The number of ECS instances that are in the Pending Add state in the scaling group.
  /// [protectedCapacity] (Available since v1.242.0) The number of ECS instances that are in the Protected state in the scaling group.
  /// [regionId] Region ID the scaling group belongs to.
  /// [removalPolicies] Removal policy used to select the ECS instance to remove from the scaling group.
  /// [removingCapacity] (Available since v1.242.0) The number of ECS instances that are being removed from the scaling group.
  /// [removingWaitCapacity] (Available since v1.242.0) The number of ECS instances that are in the Pending Remove state in the scaling group.
  /// [resourceGroupId] (Available since v1.242.0) The ID of the resource group to which the scaling group that you want to query belongs.
  /// [scalingPolicy] (Available since v1.242.0) The reclaim mode of the scaling group.
  /// [spotAllocationStrategy] (Available since v1.242.0) The allocation policy of preemptible instances. This parameter indicates the method used by Auto Scaling to select instance types to create the required number of preemptible instances. This parameter takes effect only if you set multi_az_policy to COMPOSABLE.
  /// [spotCapacity] (Available since v1.242.0) The number of preemptible instances in the scaling group.
  /// [spotInstancePools] (Available since v1.242.0) The number of instance types. Auto Scaling creates preemptible instances of multiple instance types that are provided at the lowest price.
  /// [spotInstanceRemedy] (Available since v1.242.0) Indicates whether supplementation of preemptible instances is enabled. If this parameter is set to true, Auto Scaling creates an instance to replace a preemptible instance when Auto Scaling receives a system message indicating that the preemptible instance is to be reclaimed.
  /// [standbyCapacity] (Available since v1.242.0) The number of instances that are in the Standby state in the scaling group.
  /// [stopInstanceTimeout] (Available since v1.242.0) The period of time that is required by an ECS instance to enter the Stopped state during the scale-in process. Unit: seconds.
  /// [stoppedCapacity] (Available since v1.242.0) The number of instances that are in Economical Mode in the scaling group.
  /// [suspendedProcesses] The Process in suspension.
  /// [systemSuspended] (Available since v1.242.0) Indicates whether Auto Scaling stops executing the scaling operation in the scaling group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [totalCapacity] Number of instances in scaling group.
  /// [totalInstanceCount] The number of all ECS instances in the scaling group.
  /// [vpcId] The ID of the VPC to which the scaling group belongs.
  /// [vswitchId] The ID of the vSwitch to which the scaling group belongs.
  /// [vswitchIds] Vswitches id in which the ECS instance launched.
  const GetScalingGroupsGroup({
    required this.activeCapacity,
    required this.activeScalingConfiguration,
    required this.allocationStrategy,
    required this.azBalance,
    required this.capacityOptionsCompensateWithOnDemand,
    required this.capacityOptionsOnDemandBaseCapacity,
    required this.capacityOptionsOnDemandPercentageAboveBaseCapacity,
    required this.capacityOptionsSpotAutoReplaceOnDemand,
    required this.compensateWithOnDemand,
    required this.cooldownTime,
    required this.creationTime,
    required this.dbInstanceIds,
    required this.desiredCapacity,
    required this.enableDesiredCapacity,
    required this.groupDeletionProtection,
    required this.groupType,
    required this.healthCheckType,
    required this.id,
    required this.initCapacity,
    required this.launchTemplateId,
    required this.launchTemplateOverrides,
    required this.launchTemplateVersion,
    required this.lifecycleState,
    required this.loadBalancerIds,
    required this.maxInstanceLifetime,
    required this.maxSize,
    required this.minSize,
    required this.modificationTime,
    required this.monitorGroupId,
    required this.multiAzPolicy,
    required this.name,
    required this.onDemandBaseCapacity,
    required this.onDemandPercentageAboveBaseCapacity,
    required this.pendingCapacity,
    required this.pendingWaitCapacity,
    required this.protectedCapacity,
    required this.regionId,
    required this.removalPolicies,
    required this.removingCapacity,
    required this.removingWaitCapacity,
    required this.resourceGroupId,
    required this.scalingPolicy,
    required this.spotAllocationStrategy,
    required this.spotCapacity,
    required this.spotInstancePools,
    required this.spotInstanceRemedy,
    required this.standbyCapacity,
    required this.stopInstanceTimeout,
    required this.stoppedCapacity,
    required this.suspendedProcesses,
    required this.systemSuspended,
    required this.tags,
    required this.totalCapacity,
    required this.totalInstanceCount,
    required this.vpcId,
    required this.vswitchId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeCapacity': activeCapacity,
      'activeScalingConfiguration': activeScalingConfiguration,
      'allocationStrategy': allocationStrategy,
      'azBalance': azBalance,
      'capacityOptionsCompensateWithOnDemand': capacityOptionsCompensateWithOnDemand,
      'capacityOptionsOnDemandBaseCapacity': capacityOptionsOnDemandBaseCapacity,
      'capacityOptionsOnDemandPercentageAboveBaseCapacity': capacityOptionsOnDemandPercentageAboveBaseCapacity,
      'capacityOptionsSpotAutoReplaceOnDemand': capacityOptionsSpotAutoReplaceOnDemand,
      'compensateWithOnDemand': compensateWithOnDemand,
      'cooldownTime': cooldownTime,
      'creationTime': creationTime,
      'dbInstanceIds': dbInstanceIds,
      'desiredCapacity': desiredCapacity,
      'enableDesiredCapacity': enableDesiredCapacity,
      'groupDeletionProtection': groupDeletionProtection,
      'groupType': groupType,
      'healthCheckType': healthCheckType,
      'id': id,
      'initCapacity': initCapacity,
      'launchTemplateId': launchTemplateId,
      'launchTemplateOverrides': pulumi.Input.mapInputValue<List<GetScalingGroupsGroupLaunchTemplateOverride>, List<Map<String, dynamic>>>(launchTemplateOverrides, (value) => pulumi.Input.encodeList<GetScalingGroupsGroupLaunchTemplateOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplateVersion': launchTemplateVersion,
      'lifecycleState': lifecycleState,
      'loadBalancerIds': loadBalancerIds,
      'maxInstanceLifetime': maxInstanceLifetime,
      'maxSize': maxSize,
      'minSize': minSize,
      'modificationTime': modificationTime,
      'monitorGroupId': monitorGroupId,
      'multiAzPolicy': multiAzPolicy,
      'name': name,
      'onDemandBaseCapacity': onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity': onDemandPercentageAboveBaseCapacity,
      'pendingCapacity': pendingCapacity,
      'pendingWaitCapacity': pendingWaitCapacity,
      'protectedCapacity': protectedCapacity,
      'regionId': regionId,
      'removalPolicies': removalPolicies,
      'removingCapacity': removingCapacity,
      'removingWaitCapacity': removingWaitCapacity,
      'resourceGroupId': resourceGroupId,
      'scalingPolicy': scalingPolicy,
      'spotAllocationStrategy': spotAllocationStrategy,
      'spotCapacity': spotCapacity,
      'spotInstancePools': spotInstancePools,
      'spotInstanceRemedy': spotInstanceRemedy,
      'standbyCapacity': standbyCapacity,
      'stopInstanceTimeout': stopInstanceTimeout,
      'stoppedCapacity': stoppedCapacity,
      'suspendedProcesses': suspendedProcesses,
      'systemSuspended': systemSuspended,
      'tags': tags,
      'totalCapacity': totalCapacity,
      'totalInstanceCount': totalInstanceCount,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetScalingGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetScalingGroupsGroup(
      activeCapacity: pulumi.Input.fromValue(map['activeCapacity'] as int),
      activeScalingConfiguration: pulumi.Input.fromValue(map['activeScalingConfiguration'] as String),
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
      azBalance: pulumi.Input.fromValue(map['azBalance'] as bool),
      capacityOptionsCompensateWithOnDemand: pulumi.Input.fromValue(map['capacityOptionsCompensateWithOnDemand'] as bool),
      capacityOptionsOnDemandBaseCapacity: pulumi.Input.fromValue(map['capacityOptionsOnDemandBaseCapacity'] as int),
      capacityOptionsOnDemandPercentageAboveBaseCapacity: pulumi.Input.fromValue(map['capacityOptionsOnDemandPercentageAboveBaseCapacity'] as int),
      capacityOptionsSpotAutoReplaceOnDemand: pulumi.Input.fromValue(map['capacityOptionsSpotAutoReplaceOnDemand'] as bool),
      compensateWithOnDemand: pulumi.Input.fromValue(map['compensateWithOnDemand'] as bool),
      cooldownTime: pulumi.Input.fromValue(map['cooldownTime'] as int),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      dbInstanceIds: pulumi.Input.fromValue((map['dbInstanceIds'] as List).cast<String>()),
      desiredCapacity: pulumi.Input.fromValue(map['desiredCapacity'] as int),
      enableDesiredCapacity: pulumi.Input.fromValue(map['enableDesiredCapacity'] as bool),
      groupDeletionProtection: pulumi.Input.fromValue(map['groupDeletionProtection'] as bool),
      groupType: pulumi.Input.fromValue(map['groupType'] as String),
      healthCheckType: pulumi.Input.fromValue(map['healthCheckType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      initCapacity: pulumi.Input.fromValue(map['initCapacity'] as int),
      launchTemplateId: pulumi.Input.fromValue(map['launchTemplateId'] as String),
      launchTemplateOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetScalingGroupsGroupLaunchTemplateOverride>(map['launchTemplateOverrides']!, (value) => GetScalingGroupsGroupLaunchTemplateOverride.fromMap((value as Map).cast<String, dynamic>()))),
      launchTemplateVersion: pulumi.Input.fromValue(map['launchTemplateVersion'] as String),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      loadBalancerIds: pulumi.Input.fromValue((map['loadBalancerIds'] as List).cast<String>()),
      maxInstanceLifetime: pulumi.Input.fromValue(map['maxInstanceLifetime'] as int),
      maxSize: pulumi.Input.fromValue(map['maxSize'] as int),
      minSize: pulumi.Input.fromValue(map['minSize'] as int),
      modificationTime: pulumi.Input.fromValue(map['modificationTime'] as String),
      monitorGroupId: pulumi.Input.fromValue(map['monitorGroupId'] as String),
      multiAzPolicy: pulumi.Input.fromValue(map['multiAzPolicy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      onDemandBaseCapacity: pulumi.Input.fromValue(map['onDemandBaseCapacity'] as int),
      onDemandPercentageAboveBaseCapacity: pulumi.Input.fromValue(map['onDemandPercentageAboveBaseCapacity'] as int),
      pendingCapacity: pulumi.Input.fromValue(map['pendingCapacity'] as int),
      pendingWaitCapacity: pulumi.Input.fromValue(map['pendingWaitCapacity'] as int),
      protectedCapacity: pulumi.Input.fromValue(map['protectedCapacity'] as int),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      removalPolicies: pulumi.Input.fromValue((map['removalPolicies'] as List).cast<String>()),
      removingCapacity: pulumi.Input.fromValue(map['removingCapacity'] as int),
      removingWaitCapacity: pulumi.Input.fromValue(map['removingWaitCapacity'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      scalingPolicy: pulumi.Input.fromValue(map['scalingPolicy'] as String),
      spotAllocationStrategy: pulumi.Input.fromValue(map['spotAllocationStrategy'] as String),
      spotCapacity: pulumi.Input.fromValue(map['spotCapacity'] as int),
      spotInstancePools: pulumi.Input.fromValue(map['spotInstancePools'] as int),
      spotInstanceRemedy: pulumi.Input.fromValue(map['spotInstanceRemedy'] as bool),
      standbyCapacity: pulumi.Input.fromValue(map['standbyCapacity'] as int),
      stopInstanceTimeout: pulumi.Input.fromValue(map['stopInstanceTimeout'] as int),
      stoppedCapacity: pulumi.Input.fromValue(map['stoppedCapacity'] as int),
      suspendedProcesses: pulumi.Input.fromValue((map['suspendedProcesses'] as List).cast<String>()),
      systemSuspended: pulumi.Input.fromValue(map['systemSuspended'] as bool),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      totalCapacity: pulumi.Input.fromValue(map['totalCapacity'] as int),
      totalInstanceCount: pulumi.Input.fromValue(map['totalInstanceCount'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      vswitchIds: pulumi.Input.fromValue((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

