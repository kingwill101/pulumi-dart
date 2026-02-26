// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../spot_fleet_request_launch_specification/spot_fleet_request_launch_specification.dart';
import '../spot_fleet_request_launch_template_config/spot_fleet_request_launch_template_config.dart';
import '../spot_fleet_request_spot_maintenance_strategies/spot_fleet_request_spot_maintenance_strategies.dart';

/// The set of arguments for SpotFleetRequest.
class SpotFleetRequestArgs {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, <span pulumi-lang-nodejs="`diversified`" pulumi-lang-dotnet="`Diversified`" pulumi-lang-go="`diversified`" pulumi-lang-python="`diversified`" pulumi-lang-yaml="`diversified`" pulumi-lang-java="`diversified`">`diversified`</span>, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  final Input<String>? allocationStrategy;

  /// Reserved.
  final Input<String>? context;

  /// Indicates whether running Spot
  /// instances should be terminated if the target capacity of the Spot fleet
  /// request is decreased below the current size of the Spot fleet.
  final Input<String>? excessCapacityTerminationPolicy;

  /// The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// capacity or also attempts to maintain it. Default is <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>.
  final Input<String>? fleetType;

  /// Grants the Spot fleet permission to terminate
  /// Spot instances on your behalf when you cancel its Spot fleet request using
  /// CancelSpotFleetRequests or when the Spot fleet request expires, if you set
  /// terminateInstancesWithExpiration.
  final Input<String> iamFleetRole;

  /// Indicates whether a Spot
  /// instance stops or terminates when it is interrupted. Default is
  /// <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  final Input<String>? instanceInterruptionBehaviour;

  /// The number of Spot pools across which to allocate your target Spot capacity.
  /// Valid only when <span pulumi-lang-nodejs="`allocationStrategy`" pulumi-lang-dotnet="`AllocationStrategy`" pulumi-lang-go="`allocationStrategy`" pulumi-lang-python="`allocation_strategy`" pulumi-lang-yaml="`allocationStrategy`" pulumi-lang-java="`allocationStrategy`">`allocation_strategy`</span> is set to `lowestPrice`. Spot Fleet selects
  /// the cheapest Spot pools and evenly allocates your target Spot capacity across
  /// the number of Spot pools that you specify.
  final Input<int>? instancePoolsToUseCount;

  /// Used to define the launch configuration of the
  /// spot-fleet request. Can be specified multiple times to define different bids
  /// across different markets and instance types. Conflicts with <span pulumi-lang-nodejs="`launchTemplateConfig`" pulumi-lang-dotnet="`LaunchTemplateConfig`" pulumi-lang-go="`launchTemplateConfig`" pulumi-lang-python="`launch_template_config`" pulumi-lang-yaml="`launchTemplateConfig`" pulumi-lang-java="`launchTemplateConfig`">`launch_template_config`</span>. At least one of <span pulumi-lang-nodejs="`launchSpecification`" pulumi-lang-dotnet="`LaunchSpecification`" pulumi-lang-go="`launchSpecification`" pulumi-lang-python="`launch_specification`" pulumi-lang-yaml="`launchSpecification`" pulumi-lang-java="`launchSpecification`">`launch_specification`</span> or <span pulumi-lang-nodejs="`launchTemplateConfig`" pulumi-lang-dotnet="`LaunchTemplateConfig`" pulumi-lang-go="`launchTemplateConfig`" pulumi-lang-python="`launch_template_config`" pulumi-lang-yaml="`launchTemplateConfig`" pulumi-lang-java="`launchTemplateConfig`">`launch_template_config`</span> is required.
  ///
  /// **Note**: This takes in similar but not
  /// identical inputs as <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span>.  There are limitations on
  /// what you can specify. See the list of officially supported inputs in the
  /// [reference documentation](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetLaunchSpecification.html). Any normal <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> parameter that corresponds to those inputs may be used and it have
  /// a additional parameter <span pulumi-lang-nodejs="`iamInstanceProfileArn`" pulumi-lang-dotnet="`IamInstanceProfileArn`" pulumi-lang-go="`iamInstanceProfileArn`" pulumi-lang-python="`iam_instance_profile_arn`" pulumi-lang-yaml="`iamInstanceProfileArn`" pulumi-lang-java="`iamInstanceProfileArn`">`iam_instance_profile_arn`</span> takes <span pulumi-lang-nodejs="`aws.iam.InstanceProfile`" pulumi-lang-dotnet="`aws.iam.InstanceProfile`" pulumi-lang-go="`iam.InstanceProfile`" pulumi-lang-python="`iam.InstanceProfile`" pulumi-lang-yaml="`aws.iam.InstanceProfile`" pulumi-lang-java="`aws.iam.InstanceProfile`">`aws.iam.InstanceProfile`</span> attribute <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> as input.
  final Input<List<SpotFleetRequestLaunchSpecification>>? launchSpecifications;

  /// Launch template configuration block. See Launch Template Configs below for more details. Conflicts with <span pulumi-lang-nodejs="`launchSpecification`" pulumi-lang-dotnet="`LaunchSpecification`" pulumi-lang-go="`launchSpecification`" pulumi-lang-python="`launch_specification`" pulumi-lang-yaml="`launchSpecification`" pulumi-lang-java="`launchSpecification`">`launch_specification`</span>. At least one of <span pulumi-lang-nodejs="`launchSpecification`" pulumi-lang-dotnet="`LaunchSpecification`" pulumi-lang-go="`launchSpecification`" pulumi-lang-python="`launch_specification`" pulumi-lang-yaml="`launchSpecification`" pulumi-lang-java="`launchSpecification`">`launch_specification`</span> or <span pulumi-lang-nodejs="`launchTemplateConfig`" pulumi-lang-dotnet="`LaunchTemplateConfig`" pulumi-lang-go="`launchTemplateConfig`" pulumi-lang-python="`launch_template_config`" pulumi-lang-yaml="`launchTemplateConfig`" pulumi-lang-java="`launchTemplateConfig`">`launch_template_config`</span> is required.
  final Input<List<SpotFleetRequestLaunchTemplateConfig>>?
      launchTemplateConfigs;

  /// A list of elastic load balancer names to add to the Spot fleet.
  final Input<List<String>>? loadBalancers;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and <span pulumi-lang-nodejs="`prioritized`" pulumi-lang-dotnet="`Prioritized`" pulumi-lang-go="`prioritized`" pulumi-lang-python="`prioritized`" pulumi-lang-yaml="`prioritized`" pulumi-lang-java="`prioritized`">`prioritized`</span>. the default is `lowestPrice`.
  final Input<String>? onDemandAllocationStrategy;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  final Input<String>? onDemandMaxTotalPrice;

  /// The number of On-Demand units to request. If the request type is <span pulumi-lang-nodejs="`maintain`" pulumi-lang-dotnet="`Maintain`" pulumi-lang-go="`maintain`" pulumi-lang-python="`maintain`" pulumi-lang-yaml="`maintain`" pulumi-lang-java="`maintain`">`maintain`</span>, you can specify a target capacity of 0 and add capacity later.
  final Input<int>? onDemandTargetCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether Spot fleet should replace unhealthy instances. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? replaceUnhealthyInstances;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final Input<SpotFleetRequestSpotMaintenanceStrategies>?
      spotMaintenanceStrategies;

  /// The maximum bid price per unit hour.
  final Input<String>? spotPrice;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  final Input<int> targetCapacity;

  /// The unit for the target capacity. This can only be done with <span pulumi-lang-nodejs="`instanceRequirements`" pulumi-lang-dotnet="`InstanceRequirements`" pulumi-lang-go="`instanceRequirements`" pulumi-lang-python="`instance_requirements`" pulumi-lang-yaml="`instanceRequirements`" pulumi-lang-java="`instanceRequirements`">`instance_requirements`</span> defined
  final Input<String>? targetCapacityUnitType;

  /// A list of <span pulumi-lang-nodejs="`aws.alb.TargetGroup`" pulumi-lang-dotnet="`aws.alb.TargetGroup`" pulumi-lang-go="`alb.TargetGroup`" pulumi-lang-python="`alb.TargetGroup`" pulumi-lang-yaml="`aws.alb.TargetGroup`" pulumi-lang-java="`aws.alb.TargetGroup`">`aws.alb.TargetGroup`</span> ARNs, for use with Application Load Balancing.
  final Input<List<String>>? targetGroupArns;

  /// Indicates whether running Spot
  /// instances should be terminated when the resource is deleted (and the Spot fleet request cancelled).
  /// If no value is specified, the value of the <span pulumi-lang-nodejs="`terminateInstancesWithExpiration`" pulumi-lang-dotnet="`TerminateInstancesWithExpiration`" pulumi-lang-go="`terminateInstancesWithExpiration`" pulumi-lang-python="`terminate_instances_with_expiration`" pulumi-lang-yaml="`terminateInstancesWithExpiration`" pulumi-lang-java="`terminateInstancesWithExpiration`">`terminate_instances_with_expiration`</span> argument is used.
  final Input<String>? terminateInstancesOnDelete;

  /// Indicates whether running Spot
  /// instances should be terminated when the Spot fleet request expires.
  final Input<bool>? terminateInstancesWithExpiration;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final Input<String>? validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  final Input<String>? validUntil;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  final Input<bool>? waitForFulfillment;

  SpotFleetRequestArgs({
    this.allocationStrategy,
    this.context,
    this.excessCapacityTerminationPolicy,
    this.fleetType,
    required this.iamFleetRole,
    this.instanceInterruptionBehaviour,
    this.instancePoolsToUseCount,
    this.launchSpecifications,
    this.launchTemplateConfigs,
    this.loadBalancers,
    this.onDemandAllocationStrategy,
    this.onDemandMaxTotalPrice,
    this.onDemandTargetCapacity,
    this.region,
    this.replaceUnhealthyInstances,
    this.spotMaintenanceStrategies,
    this.spotPrice,
    this.tags,
    required this.targetCapacity,
    this.targetCapacityUnitType,
    this.targetGroupArns,
    this.terminateInstancesOnDelete,
    this.terminateInstancesWithExpiration,
    this.validFrom,
    this.validUntil,
    this.waitForFulfillment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationStrategyValue = allocationStrategy;
    if (allocationStrategyValue != null) {
      map['allocationStrategy'] = allocationStrategyValue;
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final excessCapacityTerminationPolicyValue =
        excessCapacityTerminationPolicy;
    if (excessCapacityTerminationPolicyValue != null) {
      map['excessCapacityTerminationPolicy'] =
          excessCapacityTerminationPolicyValue;
    }
    final fleetTypeValue = fleetType;
    if (fleetTypeValue != null) {
      map['fleetType'] = fleetTypeValue;
    }
    map['iamFleetRole'] = iamFleetRole;
    final instanceInterruptionBehaviourValue = instanceInterruptionBehaviour;
    if (instanceInterruptionBehaviourValue != null) {
      map['instanceInterruptionBehaviour'] = instanceInterruptionBehaviourValue;
    }
    final instancePoolsToUseCountValue = instancePoolsToUseCount;
    if (instancePoolsToUseCountValue != null) {
      map['instancePoolsToUseCount'] = instancePoolsToUseCountValue;
    }
    final launchSpecificationsValue = launchSpecifications;
    if (launchSpecificationsValue != null) {
      map['launchSpecifications'] = Input.mapOptionalInputValue<
              List<SpotFleetRequestLaunchSpecification>,
              List<Map<String, dynamic>>>(
          launchSpecificationsValue,
          (value) => Input.encodeList<SpotFleetRequestLaunchSpecification,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final launchTemplateConfigsValue = launchTemplateConfigs;
    if (launchTemplateConfigsValue != null) {
      map['launchTemplateConfigs'] = Input.mapOptionalInputValue<
              List<SpotFleetRequestLaunchTemplateConfig>,
              List<Map<String, dynamic>>>(
          launchTemplateConfigsValue,
          (value) => Input.encodeList<SpotFleetRequestLaunchTemplateConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final loadBalancersValue = loadBalancers;
    if (loadBalancersValue != null) {
      map['loadBalancers'] = loadBalancersValue;
    }
    final onDemandAllocationStrategyValue = onDemandAllocationStrategy;
    if (onDemandAllocationStrategyValue != null) {
      map['onDemandAllocationStrategy'] = onDemandAllocationStrategyValue;
    }
    final onDemandMaxTotalPriceValue = onDemandMaxTotalPrice;
    if (onDemandMaxTotalPriceValue != null) {
      map['onDemandMaxTotalPrice'] = onDemandMaxTotalPriceValue;
    }
    final onDemandTargetCapacityValue = onDemandTargetCapacity;
    if (onDemandTargetCapacityValue != null) {
      map['onDemandTargetCapacity'] = onDemandTargetCapacityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replaceUnhealthyInstancesValue = replaceUnhealthyInstances;
    if (replaceUnhealthyInstancesValue != null) {
      map['replaceUnhealthyInstances'] = replaceUnhealthyInstancesValue;
    }
    final spotMaintenanceStrategiesValue = spotMaintenanceStrategies;
    if (spotMaintenanceStrategiesValue != null) {
      map['spotMaintenanceStrategies'] = Input.mapOptionalInputValue<
              SpotFleetRequestSpotMaintenanceStrategies, Map<String, dynamic>>(
          spotMaintenanceStrategiesValue, (value) => value.toMap());
    }
    final spotPriceValue = spotPrice;
    if (spotPriceValue != null) {
      map['spotPrice'] = spotPriceValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetCapacity'] = targetCapacity;
    final targetCapacityUnitTypeValue = targetCapacityUnitType;
    if (targetCapacityUnitTypeValue != null) {
      map['targetCapacityUnitType'] = targetCapacityUnitTypeValue;
    }
    final targetGroupArnsValue = targetGroupArns;
    if (targetGroupArnsValue != null) {
      map['targetGroupArns'] = targetGroupArnsValue;
    }
    final terminateInstancesOnDeleteValue = terminateInstancesOnDelete;
    if (terminateInstancesOnDeleteValue != null) {
      map['terminateInstancesOnDelete'] = terminateInstancesOnDeleteValue;
    }
    final terminateInstancesWithExpirationValue =
        terminateInstancesWithExpiration;
    if (terminateInstancesWithExpirationValue != null) {
      map['terminateInstancesWithExpiration'] =
          terminateInstancesWithExpirationValue;
    }
    final validFromValue = validFrom;
    if (validFromValue != null) {
      map['validFrom'] = validFromValue;
    }
    final validUntilValue = validUntil;
    if (validUntilValue != null) {
      map['validUntil'] = validUntilValue;
    }
    final waitForFulfillmentValue = waitForFulfillment;
    if (waitForFulfillmentValue != null) {
      map['waitForFulfillment'] = waitForFulfillmentValue;
    }
    return map;
  }

  factory SpotFleetRequestArgs.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestArgs(
      allocationStrategy:
          Input.asOptionalInput<String>(map['allocationStrategy']),
      context: Input.asOptionalInput<String>(map['context']),
      excessCapacityTerminationPolicy:
          Input.asOptionalInput<String>(map['excessCapacityTerminationPolicy']),
      fleetType: Input.asOptionalInput<String>(map['fleetType']),
      iamFleetRole: Input.asInput<String>(map['iamFleetRole']),
      instanceInterruptionBehaviour:
          Input.asOptionalInput<String>(map['instanceInterruptionBehaviour']),
      instancePoolsToUseCount:
          Input.asOptionalInput<int>(map['instancePoolsToUseCount']),
      launchSpecifications:
          Input.asOptionalInput<List<SpotFleetRequestLaunchSpecification>>(
              map['launchSpecifications']),
      launchTemplateConfigs:
          Input.asOptionalInput<List<SpotFleetRequestLaunchTemplateConfig>>(
              map['launchTemplateConfigs']),
      loadBalancers: Input.asOptionalInput<List<String>>(map['loadBalancers']),
      onDemandAllocationStrategy:
          Input.asOptionalInput<String>(map['onDemandAllocationStrategy']),
      onDemandMaxTotalPrice:
          Input.asOptionalInput<String>(map['onDemandMaxTotalPrice']),
      onDemandTargetCapacity:
          Input.asOptionalInput<int>(map['onDemandTargetCapacity']),
      region: Input.asOptionalInput<String>(map['region']),
      replaceUnhealthyInstances:
          Input.asOptionalInput<bool>(map['replaceUnhealthyInstances']),
      spotMaintenanceStrategies:
          Input.asOptionalInput<SpotFleetRequestSpotMaintenanceStrategies>(
              map['spotMaintenanceStrategies']),
      spotPrice: Input.asOptionalInput<String>(map['spotPrice']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetCapacity: Input.asInput<int>(map['targetCapacity']),
      targetCapacityUnitType:
          Input.asOptionalInput<String>(map['targetCapacityUnitType']),
      targetGroupArns:
          Input.asOptionalInput<List<String>>(map['targetGroupArns']),
      terminateInstancesOnDelete:
          Input.asOptionalInput<String>(map['terminateInstancesOnDelete']),
      terminateInstancesWithExpiration:
          Input.asOptionalInput<bool>(map['terminateInstancesWithExpiration']),
      validFrom: Input.asOptionalInput<String>(map['validFrom']),
      validUntil: Input.asOptionalInput<String>(map['validUntil']),
      waitForFulfillment:
          Input.asOptionalInput<bool>(map['waitForFulfillment']),
    );
  }
}
