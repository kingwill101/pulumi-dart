// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_fleet_instance_set.dart';
import 'fleet_launch_template_config.dart';
import 'fleet_on_demand_options.dart';
import 'fleet_spot_options.dart';
import 'fleet_target_capacity_specification.dart';

/// {@template pulumi_ec2_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_ec2_fleet_fleet_args_doc}
class FleetArgs {
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
  final pulumi.Input<FleetTargetCapacitySpecification> targetCapacitySpecification;
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

  /// Creates a new [FleetArgs].
  /// [context] Reserved.
  /// [excessCapacityTerminationPolicy] Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, `termination`. Defaults to `termination`. Supported only for fleets of type `maintain`.
  /// [fleetInstanceSets] Information about the instances that were launched by the fleet. Available only when `type` is set to `instant`.
  /// [fleetState] The state of the EC2 Fleet.
  /// [fulfilledCapacity] The number of units fulfilled by this request compared to the set target capacity.
  /// [fulfilledOnDemandCapacity] The number of units fulfilled by this request compared to the set target On-Demand capacity.
  /// [launchTemplateConfigs] Nested argument containing EC2 Launch Template configurations. Defined below.
  /// [onDemandOptions] Nested argument containing On-Demand configurations. Defined below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceUnhealthyInstances] Whether EC2 Fleet should replace unhealthy instances. Defaults to `false`. Supported only for fleets of type `maintain`.
  /// [spotOptions] Nested argument containing Spot configurations. Defined below.
  /// [tags] Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetCapacitySpecification] Nested argument containing target capacity configurations. Defined below.
  /// [terminateInstances] Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  /// [terminateInstancesWithExpiration] Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  /// [type] The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  /// [validFrom] The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  FleetArgs({
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
    return <String, dynamic>{
      'context': ?context,
      'excessCapacityTerminationPolicy': ?excessCapacityTerminationPolicy,
      'fleetInstanceSets': ?pulumi.Input.mapOptionalInputValue<List<FleetFleetInstanceSet>, List<Map<String, dynamic>>>(fleetInstanceSets, (value) => pulumi.Input.encodeList<FleetFleetInstanceSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleetState': ?fleetState,
      'fulfilledCapacity': ?fulfilledCapacity,
      'fulfilledOnDemandCapacity': ?fulfilledOnDemandCapacity,
      'launchTemplateConfigs': pulumi.Input.mapInputValue<List<FleetLaunchTemplateConfig>, List<Map<String, dynamic>>>(launchTemplateConfigs, (value) => pulumi.Input.encodeList<FleetLaunchTemplateConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandOptions': ?pulumi.Input.mapOptionalInputValue<FleetOnDemandOptions, Map<String, dynamic>>(onDemandOptions, (value) => value.toMap()),
      'region': ?region,
      'replaceUnhealthyInstances': ?replaceUnhealthyInstances,
      'spotOptions': ?pulumi.Input.mapOptionalInputValue<FleetSpotOptions, Map<String, dynamic>>(spotOptions, (value) => value.toMap()),
      'tags': ?tags,
      'targetCapacitySpecification': pulumi.Input.mapInputValue<FleetTargetCapacitySpecification, Map<String, dynamic>>(targetCapacitySpecification, (value) => value.toMap()),
      'terminateInstances': ?terminateInstances,
      'terminateInstancesWithExpiration': ?terminateInstancesWithExpiration,
      'type': ?type,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      context: map['context'] == null ? null : ((map['context'] as String).input()).input(),
      excessCapacityTerminationPolicy: map['excessCapacityTerminationPolicy'] == null ? null : ((map['excessCapacityTerminationPolicy'] as String).input()).input(),
      fleetInstanceSets: map['fleetInstanceSets'] == null ? null : ((pulumi.Input.decodeList<FleetFleetInstanceSet>(map['fleetInstanceSets']!, (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      fleetState: map['fleetState'] == null ? null : ((map['fleetState'] as String).input()).input(),
      fulfilledCapacity: map['fulfilledCapacity'] == null ? null : ((map['fulfilledCapacity'] as double).input()).input(),
      fulfilledOnDemandCapacity: map['fulfilledOnDemandCapacity'] == null ? null : ((map['fulfilledOnDemandCapacity'] as double).input()).input(),
      launchTemplateConfigs: (pulumi.Input.decodeList<FleetLaunchTemplateConfig>(map['launchTemplateConfigs']!, (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onDemandOptions: map['onDemandOptions'] == null ? null : ((FleetOnDemandOptions.fromMap((map['onDemandOptions']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replaceUnhealthyInstances: map['replaceUnhealthyInstances'] == null ? null : ((map['replaceUnhealthyInstances'] as bool).input()).input(),
      spotOptions: map['spotOptions'] == null ? null : ((FleetSpotOptions.fromMap((map['spotOptions']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      targetCapacitySpecification: (FleetTargetCapacitySpecification.fromMap((map['targetCapacitySpecification']! as Map).cast<String, dynamic>())).input(),
      terminateInstances: map['terminateInstances'] == null ? null : ((map['terminateInstances'] as bool).input()).input(),
      terminateInstancesWithExpiration: map['terminateInstancesWithExpiration'] == null ? null : ((map['terminateInstancesWithExpiration'] as bool).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      validFrom: map['validFrom'] == null ? null : ((map['validFrom'] as String).input()).input(),
      validUntil: map['validUntil'] == null ? null : ((map['validUntil'] as String).input()).input(),
    );
  }
}

