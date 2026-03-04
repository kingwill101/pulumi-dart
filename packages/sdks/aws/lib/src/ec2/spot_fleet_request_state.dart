// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_specification.dart';
import 'spot_fleet_request_launch_template_config.dart';
import 'spot_fleet_request_spot_maintenance_strategies.dart';

/// Input properties used for looking up and filtering SpotFleetRequest resources.
class SpotFleetRequestState {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, `diversified`, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  final pulumi.Input<String>? allocationStrategy;
  final pulumi.Input<String>? clientToken;

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
  final pulumi.Input<String>? iamFleetRole;

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

  /// The state of the Spot fleet request.
  final pulumi.Input<String>? spotRequestState;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  final pulumi.Input<int>? targetCapacity;

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

  /// Creates a new [SpotFleetRequestState].
  /// [allocationStrategy] Indicates how to allocate the target capacity across
  /// [clientToken] Optional.
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
  /// [spotRequestState] The state of the Spot fleet request.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetCapacity] The number of units to request. You can choose to set the
  /// [targetCapacityUnitType] The unit for the target capacity. This can only be done with `instance_requirements` defined
  /// [targetGroupArns] A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  /// [terminateInstancesOnDelete] Indicates whether running Spot
  /// [terminateInstancesWithExpiration] Indicates whether running Spot
  /// [validFrom] The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  /// [waitForFulfillment] If set, this provider will
  SpotFleetRequestState({
    this.allocationStrategy,
    this.clientToken,
    this.context,
    this.excessCapacityTerminationPolicy,
    this.fleetType,
    this.iamFleetRole,
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
    this.spotRequestState,
    this.tags,
    this.tagsAll,
    this.targetCapacity,
    this.targetCapacityUnitType,
    this.targetGroupArns,
    this.terminateInstancesOnDelete,
    this.terminateInstancesWithExpiration,
    this.validFrom,
    this.validUntil,
    this.waitForFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'clientToken': ?clientToken,
      'context': ?context,
      'excessCapacityTerminationPolicy': ?excessCapacityTerminationPolicy,
      'fleetType': ?fleetType,
      'iamFleetRole': ?iamFleetRole,
      'instanceInterruptionBehaviour': ?instanceInterruptionBehaviour,
      'instancePoolsToUseCount': ?instancePoolsToUseCount,
      'launchSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotFleetRequestLaunchSpecification>,
            List<Map<String, dynamic>>
          >(
            launchSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  SpotFleetRequestLaunchSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'launchTemplateConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotFleetRequestLaunchTemplateConfig>,
            List<Map<String, dynamic>>
          >(
            launchTemplateConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  SpotFleetRequestLaunchTemplateConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancers': ?loadBalancers,
      'onDemandAllocationStrategy': ?onDemandAllocationStrategy,
      'onDemandMaxTotalPrice': ?onDemandMaxTotalPrice,
      'onDemandTargetCapacity': ?onDemandTargetCapacity,
      'region': ?region,
      'replaceUnhealthyInstances': ?replaceUnhealthyInstances,
      'spotMaintenanceStrategies':
          ?pulumi.Input.mapOptionalInputValue<
            SpotFleetRequestSpotMaintenanceStrategies,
            Map<String, dynamic>
          >(spotMaintenanceStrategies, (value) => value.toMap()),
      'spotPrice': ?spotPrice,
      'spotRequestState': ?spotRequestState,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetCapacity': ?targetCapacity,
      'targetCapacityUnitType': ?targetCapacityUnitType,
      'targetGroupArns': ?targetGroupArns,
      'terminateInstancesOnDelete': ?terminateInstancesOnDelete,
      'terminateInstancesWithExpiration': ?terminateInstancesWithExpiration,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
      'waitForFulfillment': ?waitForFulfillment,
    };
  }

  factory SpotFleetRequestState.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestState(
      allocationStrategy: (() {
        final guardedValue = map['allocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientToken: (() {
        final guardedValue = map['clientToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excessCapacityTerminationPolicy: (() {
        final guardedValue = map['excessCapacityTerminationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fleetType: (() {
        final guardedValue = map['fleetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamFleetRole: (() {
        final guardedValue = map['iamFleetRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceInterruptionBehaviour: (() {
        final guardedValue = map['instanceInterruptionBehaviour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instancePoolsToUseCount: (() {
        final guardedValue = map['instancePoolsToUseCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      launchSpecifications: (() {
        final guardedValue = map['launchSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SpotFleetRequestLaunchSpecification>(
            guardedValue,
            (value) => SpotFleetRequestLaunchSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      launchTemplateConfigs: (() {
        final guardedValue = map['launchTemplateConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfig>(
            guardedValue,
            (value) => SpotFleetRequestLaunchTemplateConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      loadBalancers: (() {
        final guardedValue = map['loadBalancers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      onDemandAllocationStrategy: (() {
        final guardedValue = map['onDemandAllocationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onDemandMaxTotalPrice: (() {
        final guardedValue = map['onDemandMaxTotalPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onDemandTargetCapacity: (() {
        final guardedValue = map['onDemandTargetCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replaceUnhealthyInstances: (() {
        final guardedValue = map['replaceUnhealthyInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      spotMaintenanceStrategies: (() {
        final guardedValue = map['spotMaintenanceStrategies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SpotFleetRequestSpotMaintenanceStrategies.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spotPrice: (() {
        final guardedValue = map['spotPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spotRequestState: (() {
        final guardedValue = map['spotRequestState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetCapacity: (() {
        final guardedValue = map['targetCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetCapacityUnitType: (() {
        final guardedValue = map['targetCapacityUnitType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetGroupArns: (() {
        final guardedValue = map['targetGroupArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      terminateInstancesOnDelete: (() {
        final guardedValue = map['terminateInstancesOnDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      terminateInstancesWithExpiration: (() {
        final guardedValue = map['terminateInstancesWithExpiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      validFrom: (() {
        final guardedValue = map['validFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validUntil: (() {
        final guardedValue = map['validUntil'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitForFulfillment: (() {
        final guardedValue = map['waitForFulfillment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
