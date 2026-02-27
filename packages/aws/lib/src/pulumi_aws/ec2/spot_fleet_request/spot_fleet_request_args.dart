// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../spot_fleet_request_launch_specification/spot_fleet_request_launch_specification.dart';
import '../spot_fleet_request_launch_template_config/spot_fleet_request_launch_template_config.dart';
import '../spot_fleet_request_spot_maintenance_strategies/spot_fleet_request_spot_maintenance_strategies.dart';

/// The set of arguments for SpotFleetRequest.
class SpotFleetRequestArgs {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, `diversified`, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  final Input<String>? allocationStrategy;

  /// Reserved.
  final Input<String>? context;

  /// Indicates whether running Spot
  /// instances should be terminated if the target capacity of the Spot fleet
  /// request is decreased below the current size of the Spot fleet.
  final Input<String>? excessCapacityTerminationPolicy;

  /// The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// capacity or also attempts to maintain it. Default is `maintain`.
  final Input<String>? fleetType;

  /// Grants the Spot fleet permission to terminate
  /// Spot instances on your behalf when you cancel its Spot fleet request using
  /// CancelSpotFleetRequests or when the Spot fleet request expires, if you set
  /// terminateInstancesWithExpiration.
  final Input<String> iamFleetRole;

  /// Indicates whether a Spot
  /// instance stops or terminates when it is interrupted. Default is
  /// `terminate`.
  final Input<String>? instanceInterruptionBehaviour;

  /// The number of Spot pools across which to allocate your target Spot capacity.
  /// Valid only when `allocation_strategy` is set to `lowestPrice`. Spot Fleet selects
  /// the cheapest Spot pools and evenly allocates your target Spot capacity across
  /// the number of Spot pools that you specify.
  final Input<int>? instancePoolsToUseCount;

  /// Used to define the launch configuration of the
  /// spot-fleet request. Can be specified multiple times to define different bids
  /// across different markets and instance types. Conflicts with `launch_template_config`. At least one of `launch_specification` or `launch_template_config` is required.
  ///
  /// **Note**: This takes in similar but not
  /// identical inputs as `aws.ec2.Instance`.  There are limitations on
  /// what you can specify. See the list of officially supported inputs in the
  /// [reference documentation](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetLaunchSpecification.html). Any normal `aws.ec2.Instance` parameter that corresponds to those inputs may be used and it have
  /// a additional parameter `iam_instance_profile_arn` takes `aws.iam.InstanceProfile` attribute `arn` as input.
  final Input<List<SpotFleetRequestLaunchSpecification>>? launchSpecifications;

  /// Launch template configuration block. See Launch Template Configs below for more details. Conflicts with `launch_specification`. At least one of `launch_specification` or `launch_template_config` is required.
  final Input<List<SpotFleetRequestLaunchTemplateConfig>>?
      launchTemplateConfigs;

  /// A list of elastic load balancer names to add to the Spot fleet.
  final Input<List<String>>? loadBalancers;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and `prioritized`. the default is `lowestPrice`.
  final Input<String>? onDemandAllocationStrategy;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  final Input<String>? onDemandMaxTotalPrice;

  /// The number of On-Demand units to request. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  final Input<int>? onDemandTargetCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether Spot fleet should replace unhealthy instances. Default `false`.
  final Input<bool>? replaceUnhealthyInstances;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final Input<SpotFleetRequestSpotMaintenanceStrategies>?
      spotMaintenanceStrategies;

  /// The maximum bid price per unit hour.
  final Input<String>? spotPrice;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  final Input<int> targetCapacity;

  /// The unit for the target capacity. This can only be done with `instance_requirements` defined
  final Input<String>? targetCapacityUnitType;

  /// A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  final Input<List<String>>? targetGroupArns;

  /// Indicates whether running Spot
  /// instances should be terminated when the resource is deleted (and the Spot fleet request cancelled).
  /// If no value is specified, the value of the `terminate_instances_with_expiration` argument is used.
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
