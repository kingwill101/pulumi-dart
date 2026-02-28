// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_specification.dart';
import 'spot_fleet_request_launch_template_config.dart';
import 'spot_fleet_request_spot_maintenance_strategies.dart';

/// {@template pulumi_ec2_spot_fleet_request_spot_fleet_request_args_doc}
/// The set of arguments for SpotFleetRequest.
/// {@endtemplate}
/// {@macro pulumi_ec2_spot_fleet_request_spot_fleet_request_args_doc}
class SpotFleetRequestArgs {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, `diversified`, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  final pulumi.Input<String>? allocationStrategy;

  /// Reserved.
  final pulumi.Input<String>? context;

  /// Indicates whether running Spot
  /// instances should be terminated if the target capacity of the Spot fleet
  /// request is decreased below the current size of the Spot fleet.
  final pulumi.Input<String>? excessCapacityTerminationPolicy;

  /// The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// capacity or also attempts to maintain it. Default is `maintain`.
  final pulumi.Input<String>? fleetType;

  /// Grants the Spot fleet permission to terminate
  /// Spot instances on your behalf when you cancel its Spot fleet request using
  /// CancelSpotFleetRequests or when the Spot fleet request expires, if you set
  /// terminateInstancesWithExpiration.
  final pulumi.Input<String> iamFleetRole;

  /// Indicates whether a Spot
  /// instance stops or terminates when it is interrupted. Default is
  /// `terminate`.
  final pulumi.Input<String>? instanceInterruptionBehaviour;

  /// The number of Spot pools across which to allocate your target Spot capacity.
  /// Valid only when `allocation_strategy` is set to `lowestPrice`. Spot Fleet selects
  /// the cheapest Spot pools and evenly allocates your target Spot capacity across
  /// the number of Spot pools that you specify.
  final pulumi.Input<int>? instancePoolsToUseCount;

  /// Used to define the launch configuration of the
  /// spot-fleet request. Can be specified multiple times to define different bids
  /// across different markets and instance types. Conflicts with `launch_template_config`. At least one of `launch_specification` or `launch_template_config` is required.
  ///
  /// **Note**: This takes in similar but not
  /// identical inputs as `aws.ec2.Instance`.  There are limitations on
  /// what you can specify. See the list of officially supported inputs in the
  /// [reference documentation](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetLaunchSpecification.html). Any normal `aws.ec2.Instance` parameter that corresponds to those inputs may be used and it have
  /// a additional parameter `iam_instance_profile_arn` takes `aws.iam.InstanceProfile` attribute `arn` as input.
  final pulumi.Input<List<SpotFleetRequestLaunchSpecification>>?
      launchSpecifications;

  /// Launch template configuration block. See Launch Template Configs below for more details. Conflicts with `launch_specification`. At least one of `launch_specification` or `launch_template_config` is required.
  final pulumi.Input<List<SpotFleetRequestLaunchTemplateConfig>>?
      launchTemplateConfigs;

  /// A list of elastic load balancer names to add to the Spot fleet.
  final pulumi.Input<List<String>>? loadBalancers;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and `prioritized`. the default is `lowestPrice`.
  final pulumi.Input<String>? onDemandAllocationStrategy;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  final pulumi.Input<String>? onDemandMaxTotalPrice;

  /// The number of On-Demand units to request. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  final pulumi.Input<int>? onDemandTargetCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Indicates whether Spot fleet should replace unhealthy instances. Default `false`.
  final pulumi.Input<bool>? replaceUnhealthyInstances;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  final pulumi.Input<SpotFleetRequestSpotMaintenanceStrategies>?
      spotMaintenanceStrategies;

  /// The maximum bid price per unit hour.
  final pulumi.Input<String>? spotPrice;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  final pulumi.Input<int> targetCapacity;

  /// The unit for the target capacity. This can only be done with `instance_requirements` defined
  final pulumi.Input<String>? targetCapacityUnitType;

  /// A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  final pulumi.Input<List<String>>? targetGroupArns;

  /// Indicates whether running Spot
  /// instances should be terminated when the resource is deleted (and the Spot fleet request cancelled).
  /// If no value is specified, the value of the `terminate_instances_with_expiration` argument is used.
  final pulumi.Input<String>? terminateInstancesOnDelete;

  /// Indicates whether running Spot
  /// instances should be terminated when the Spot fleet request expires.
  final pulumi.Input<bool>? terminateInstancesWithExpiration;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final pulumi.Input<String>? validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  final pulumi.Input<String>? validUntil;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  final pulumi.Input<bool>? waitForFulfillment;

  /// Creates a new [SpotFleetRequestArgs].
  /// [allocationStrategy] Indicates how to allocate the target capacity across
  /// [context] Reserved.
  /// [excessCapacityTerminationPolicy] Indicates whether running Spot
  /// [fleetType] The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// [iamFleetRole] Grants the Spot fleet permission to terminate
  /// [instanceInterruptionBehaviour] Indicates whether a Spot
  /// [instancePoolsToUseCount] The number of Spot pools across which to allocate your target Spot capacity.
  /// [launchSpecifications] Used to define the launch configuration of the
  /// [launchTemplateConfigs] Launch template configuration block. See Launch Template Configs below for more details. Conflicts with `launch_specification`. At least one of `launch_specification` or `launch_template_config` is required.
  /// [loadBalancers] A list of elastic load balancer names to add to the Spot fleet.
  /// [onDemandAllocationStrategy] The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and `prioritized`. the default is `lowestPrice`.
  /// [onDemandMaxTotalPrice] The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  /// [onDemandTargetCapacity] The number of On-Demand units to request. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceUnhealthyInstances] Indicates whether Spot fleet should replace unhealthy instances. Default `false`.
  /// [spotMaintenanceStrategies] Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  /// [spotPrice] The maximum bid price per unit hour.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetCapacity] The number of units to request. You can choose to set the
  /// [targetCapacityUnitType] The unit for the target capacity. This can only be done with `instance_requirements` defined
  /// [targetGroupArns] A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  /// [terminateInstancesOnDelete] Indicates whether running Spot
  /// [terminateInstancesWithExpiration] Indicates whether running Spot
  /// [validFrom] The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  /// [waitForFulfillment] If set, this provider will
  SpotFleetRequestArgs({
    String? allocationStrategy,
    String? context,
    String? excessCapacityTerminationPolicy,
    String? fleetType,
    required String iamFleetRole,
    String? instanceInterruptionBehaviour,
    int? instancePoolsToUseCount,
    List<SpotFleetRequestLaunchSpecification>? launchSpecifications,
    List<SpotFleetRequestLaunchTemplateConfig>? launchTemplateConfigs,
    List<String>? loadBalancers,
    String? onDemandAllocationStrategy,
    String? onDemandMaxTotalPrice,
    int? onDemandTargetCapacity,
    String? region,
    bool? replaceUnhealthyInstances,
    SpotFleetRequestSpotMaintenanceStrategies? spotMaintenanceStrategies,
    String? spotPrice,
    Map<String, String>? tags,
    required int targetCapacity,
    String? targetCapacityUnitType,
    List<String>? targetGroupArns,
    String? terminateInstancesOnDelete,
    bool? terminateInstancesWithExpiration,
    String? validFrom,
    String? validUntil,
    bool? waitForFulfillment,
  })  : allocationStrategy =
            pulumi.Input.asOptionalInput<String>(allocationStrategy),
        context = pulumi.Input.asOptionalInput<String>(context),
        excessCapacityTerminationPolicy = pulumi.Input.asOptionalInput<String>(
            excessCapacityTerminationPolicy),
        fleetType = pulumi.Input.asOptionalInput<String>(fleetType),
        iamFleetRole = pulumi.Input.asInput<String>(iamFleetRole),
        instanceInterruptionBehaviour =
            pulumi.Input.asOptionalInput<String>(instanceInterruptionBehaviour),
        instancePoolsToUseCount =
            pulumi.Input.asOptionalInput<int>(instancePoolsToUseCount),
        launchSpecifications = pulumi.Input.asOptionalInput<
            List<SpotFleetRequestLaunchSpecification>>(launchSpecifications),
        launchTemplateConfigs = pulumi.Input.asOptionalInput<
            List<SpotFleetRequestLaunchTemplateConfig>>(launchTemplateConfigs),
        loadBalancers =
            pulumi.Input.asOptionalInput<List<String>>(loadBalancers),
        onDemandAllocationStrategy =
            pulumi.Input.asOptionalInput<String>(onDemandAllocationStrategy),
        onDemandMaxTotalPrice =
            pulumi.Input.asOptionalInput<String>(onDemandMaxTotalPrice),
        onDemandTargetCapacity =
            pulumi.Input.asOptionalInput<int>(onDemandTargetCapacity),
        region = pulumi.Input.asOptionalInput<String>(region),
        replaceUnhealthyInstances =
            pulumi.Input.asOptionalInput<bool>(replaceUnhealthyInstances),
        spotMaintenanceStrategies = pulumi.Input.asOptionalInput<
                SpotFleetRequestSpotMaintenanceStrategies>(
            spotMaintenanceStrategies),
        spotPrice = pulumi.Input.asOptionalInput<String>(spotPrice),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetCapacity = pulumi.Input.asInput<int>(targetCapacity),
        targetCapacityUnitType =
            pulumi.Input.asOptionalInput<String>(targetCapacityUnitType),
        targetGroupArns =
            pulumi.Input.asOptionalInput<List<String>>(targetGroupArns),
        terminateInstancesOnDelete =
            pulumi.Input.asOptionalInput<String>(terminateInstancesOnDelete),
        terminateInstancesWithExpiration = pulumi.Input.asOptionalInput<bool>(
            terminateInstancesWithExpiration),
        validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
        validUntil = pulumi.Input.asOptionalInput<String>(validUntil),
        waitForFulfillment =
            pulumi.Input.asOptionalInput<bool>(waitForFulfillment);

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
      map['launchSpecifications'] = pulumi.Input.mapOptionalInputValue<
              List<SpotFleetRequestLaunchSpecification>,
              List<Map<String, dynamic>>>(
          launchSpecificationsValue,
          (value) => pulumi.Input.encodeList<
              SpotFleetRequestLaunchSpecification,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final launchTemplateConfigsValue = launchTemplateConfigs;
    if (launchTemplateConfigsValue != null) {
      map['launchTemplateConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<SpotFleetRequestLaunchTemplateConfig>,
              List<Map<String, dynamic>>>(
          launchTemplateConfigsValue,
          (value) => pulumi.Input.encodeList<
              SpotFleetRequestLaunchTemplateConfig,
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
      map['spotMaintenanceStrategies'] = pulumi.Input.mapOptionalInputValue<
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
      allocationStrategy: map['allocationStrategy'] == null
          ? null
          : map['allocationStrategy'] as String,
      context: map['context'] == null ? null : map['context'] as String,
      excessCapacityTerminationPolicy:
          map['excessCapacityTerminationPolicy'] == null
              ? null
              : map['excessCapacityTerminationPolicy'] as String,
      fleetType: map['fleetType'] == null ? null : map['fleetType'] as String,
      iamFleetRole: map['iamFleetRole'] as String,
      instanceInterruptionBehaviour:
          map['instanceInterruptionBehaviour'] == null
              ? null
              : map['instanceInterruptionBehaviour'] as String,
      instancePoolsToUseCount: map['instancePoolsToUseCount'] == null
          ? null
          : map['instancePoolsToUseCount'] as int,
      launchSpecifications: map['launchSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<SpotFleetRequestLaunchSpecification>(
              map['launchSpecifications'],
              (value) => SpotFleetRequestLaunchSpecification.fromMap(
                  (value as Map).cast<String, dynamic>())),
      launchTemplateConfigs: map['launchTemplateConfigs'] == null
          ? null
          : pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfig>(
              map['launchTemplateConfigs'],
              (value) => SpotFleetRequestLaunchTemplateConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      loadBalancers: map['loadBalancers'] == null
          ? null
          : (map['loadBalancers'] as List).cast<String>(),
      onDemandAllocationStrategy: map['onDemandAllocationStrategy'] == null
          ? null
          : map['onDemandAllocationStrategy'] as String,
      onDemandMaxTotalPrice: map['onDemandMaxTotalPrice'] == null
          ? null
          : map['onDemandMaxTotalPrice'] as String,
      onDemandTargetCapacity: map['onDemandTargetCapacity'] == null
          ? null
          : map['onDemandTargetCapacity'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      replaceUnhealthyInstances: map['replaceUnhealthyInstances'] == null
          ? null
          : map['replaceUnhealthyInstances'] as bool,
      spotMaintenanceStrategies: map['spotMaintenanceStrategies'] == null
          ? null
          : SpotFleetRequestSpotMaintenanceStrategies.fromMap(
              (map['spotMaintenanceStrategies'] as Map)
                  .cast<String, dynamic>()),
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetCapacity: map['targetCapacity'] as int,
      targetCapacityUnitType: map['targetCapacityUnitType'] == null
          ? null
          : map['targetCapacityUnitType'] as String,
      targetGroupArns: map['targetGroupArns'] == null
          ? null
          : (map['targetGroupArns'] as List).cast<String>(),
      terminateInstancesOnDelete: map['terminateInstancesOnDelete'] == null
          ? null
          : map['terminateInstancesOnDelete'] as String,
      terminateInstancesWithExpiration:
          map['terminateInstancesWithExpiration'] == null
              ? null
              : map['terminateInstancesWithExpiration'] as bool,
      validFrom: map['validFrom'] == null ? null : map['validFrom'] as String,
      validUntil:
          map['validUntil'] == null ? null : map['validUntil'] as String,
      waitForFulfillment: map['waitForFulfillment'] == null
          ? null
          : map['waitForFulfillment'] as bool,
    );
  }
}
