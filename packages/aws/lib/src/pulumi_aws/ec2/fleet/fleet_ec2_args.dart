// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_fleet_instance_set/fleet_fleet_instance_set.dart';
import '../fleet_launch_template_config/fleet_launch_template_config.dart';
import '../fleet_on_demand_options/fleet_on_demand_options.dart';
import '../fleet_spot_options/fleet_spot_options.dart';
import '../fleet_target_capacity_specification/fleet_target_capacity_specification.dart';

/// The set of arguments for Fleet.
class FleetEc2Args {
  /// Reserved.
  final pulumi.Input<String>? context;

  /// Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, `termination`. Defaults to `termination`. Supported only for fleets of type `maintain`.
  final pulumi.Input<String>? excessCapacityTerminationPolicy;

  /// Information about the instances that were launched by the fleet. Available only when `type` is set to `instant`.
  final pulumi.Input<List<FleetFleetInstanceSet>>? fleetInstanceSets;

  /// The state of the EC2 Fleet.
  final pulumi.Input<String>? fleetState;

  /// The number of units fulfilled by this request compared to the set target capacity.
  final pulumi.Input<double>? fulfilledCapacity;

  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  final pulumi.Input<double>? fulfilledOnDemandCapacity;

  /// Nested argument containing EC2 Launch Template configurations. Defined below.
  final pulumi.Input<List<FleetLaunchTemplateConfig>> launchTemplateConfigs;

  /// Nested argument containing On-Demand configurations. Defined below.
  final pulumi.Input<FleetOnDemandOptions>? onDemandOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether EC2 Fleet should replace unhealthy instances. Defaults to `false`. Supported only for fleets of type `maintain`.
  final pulumi.Input<bool>? replaceUnhealthyInstances;

  /// Nested argument containing Spot configurations. Defined below.
  final pulumi.Input<FleetSpotOptions>? spotOptions;

  /// Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Nested argument containing target capacity configurations. Defined below.
  final pulumi.Input<FleetTargetCapacitySpecification>
      targetCapacitySpecification;

  /// Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  final pulumi.Input<bool>? terminateInstances;

  /// Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  final pulumi.Input<bool>? terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  final pulumi.Input<String>? type;

  /// The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final pulumi.Input<String>? validFrom;

  /// The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  final pulumi.Input<String>? validUntil;

  FleetEc2Args({
    this.context,
    this.excessCapacityTerminationPolicy,
    this.fleetInstanceSets,
    this.fleetState,
    this.fulfilledCapacity,
    this.fulfilledOnDemandCapacity,
    required this.launchTemplateConfigs,
    this.onDemandOptions,
    this.region,
    this.replaceUnhealthyInstances,
    this.spotOptions,
    this.tags,
    required this.targetCapacitySpecification,
    this.terminateInstances,
    this.terminateInstancesWithExpiration,
    this.type,
    this.validFrom,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final fleetInstanceSetsValue = fleetInstanceSets;
    if (fleetInstanceSetsValue != null) {
      map['fleetInstanceSets'] = pulumi.Input.mapOptionalInputValue<
              List<FleetFleetInstanceSet>, List<Map<String, dynamic>>>(
          fleetInstanceSetsValue,
          (value) => pulumi.Input.encodeList<FleetFleetInstanceSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final fleetStateValue = fleetState;
    if (fleetStateValue != null) {
      map['fleetState'] = fleetStateValue;
    }
    final fulfilledCapacityValue = fulfilledCapacity;
    if (fulfilledCapacityValue != null) {
      map['fulfilledCapacity'] = fulfilledCapacityValue;
    }
    final fulfilledOnDemandCapacityValue = fulfilledOnDemandCapacity;
    if (fulfilledOnDemandCapacityValue != null) {
      map['fulfilledOnDemandCapacity'] = fulfilledOnDemandCapacityValue;
    }
    map['launchTemplateConfigs'] = pulumi.Input.mapInputValue<
            List<FleetLaunchTemplateConfig>, List<Map<String, dynamic>>>(
        launchTemplateConfigs,
        (value) => pulumi.Input.encodeList<FleetLaunchTemplateConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final onDemandOptionsValue = onDemandOptions;
    if (onDemandOptionsValue != null) {
      map['onDemandOptions'] = pulumi.Input.mapOptionalInputValue<
          FleetOnDemandOptions,
          Map<String, dynamic>>(onDemandOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replaceUnhealthyInstancesValue = replaceUnhealthyInstances;
    if (replaceUnhealthyInstancesValue != null) {
      map['replaceUnhealthyInstances'] = replaceUnhealthyInstancesValue;
    }
    final spotOptionsValue = spotOptions;
    if (spotOptionsValue != null) {
      map['spotOptions'] = pulumi.Input.mapOptionalInputValue<FleetSpotOptions,
          Map<String, dynamic>>(spotOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetCapacitySpecification'] = pulumi.Input.mapInputValue<
            FleetTargetCapacitySpecification, Map<String, dynamic>>(
        targetCapacitySpecification, (value) => value.toMap());
    final terminateInstancesValue = terminateInstances;
    if (terminateInstancesValue != null) {
      map['terminateInstances'] = terminateInstancesValue;
    }
    final terminateInstancesWithExpirationValue =
        terminateInstancesWithExpiration;
    if (terminateInstancesWithExpirationValue != null) {
      map['terminateInstancesWithExpiration'] =
          terminateInstancesWithExpirationValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final validFromValue = validFrom;
    if (validFromValue != null) {
      map['validFrom'] = validFromValue;
    }
    final validUntilValue = validUntil;
    if (validUntilValue != null) {
      map['validUntil'] = validUntilValue;
    }
    return map;
  }

  factory FleetEc2Args.fromMap(Map<String, dynamic> map) {
    return FleetEc2Args(
      context: pulumi.Input.asOptionalInput<String>(map['context']),
      excessCapacityTerminationPolicy: pulumi.Input.asOptionalInput<String>(
          map['excessCapacityTerminationPolicy']),
      fleetInstanceSets:
          pulumi.Input.asOptionalInput<List<FleetFleetInstanceSet>>(
              map['fleetInstanceSets']),
      fleetState: pulumi.Input.asOptionalInput<String>(map['fleetState']),
      fulfilledCapacity:
          pulumi.Input.asOptionalInput<double>(map['fulfilledCapacity']),
      fulfilledOnDemandCapacity: pulumi.Input.asOptionalInput<double>(
          map['fulfilledOnDemandCapacity']),
      launchTemplateConfigs:
          pulumi.Input.asInput<List<FleetLaunchTemplateConfig>>(
              map['launchTemplateConfigs']),
      onDemandOptions: pulumi.Input.asOptionalInput<FleetOnDemandOptions>(
          map['onDemandOptions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replaceUnhealthyInstances:
          pulumi.Input.asOptionalInput<bool>(map['replaceUnhealthyInstances']),
      spotOptions:
          pulumi.Input.asOptionalInput<FleetSpotOptions>(map['spotOptions']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetCapacitySpecification:
          pulumi.Input.asInput<FleetTargetCapacitySpecification>(
              map['targetCapacitySpecification']),
      terminateInstances:
          pulumi.Input.asOptionalInput<bool>(map['terminateInstances']),
      terminateInstancesWithExpiration: pulumi.Input.asOptionalInput<bool>(
          map['terminateInstancesWithExpiration']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      validFrom: pulumi.Input.asOptionalInput<String>(map['validFrom']),
      validUntil: pulumi.Input.asOptionalInput<String>(map['validUntil']),
    );
  }
}
