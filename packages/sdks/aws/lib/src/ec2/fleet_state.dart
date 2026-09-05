// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_fleet_instance_set.dart';
import 'fleet_launch_template_config.dart';
import 'fleet_on_demand_options.dart';
import 'fleet_spot_options.dart';
import 'fleet_target_capacity_specification.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetState {
  /// The ARN of the fleet
  final pulumi.Input<String?>? arn;
  /// Reserved.
  final pulumi.Input<String?>? context;
  /// Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, `termination`. Defaults to `termination`. Supported only for fleets of type `maintain`.
  final pulumi.Input<String?>? excessCapacityTerminationPolicy;
  /// Information about the instances that were launched by the fleet. Available only when `type` is set to `instant`.
  final pulumi.Input<List<FleetFleetInstanceSet>?>? fleetInstanceSets;
  /// The state of the EC2 Fleet.
  final pulumi.Input<String?>? fleetState;
  /// The number of units fulfilled by this request compared to the set target capacity.
  final pulumi.Input<double?>? fulfilledCapacity;
  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  final pulumi.Input<double?>? fulfilledOnDemandCapacity;
  /// Nested argument containing EC2 Launch Template configurations. Defined below.
  final pulumi.Input<List<FleetLaunchTemplateConfig>?>? launchTemplateConfigs;
  /// Nested argument containing On-Demand configurations. Defined below.
  final pulumi.Input<FleetOnDemandOptions?>? onDemandOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether EC2 Fleet should replace unhealthy instances. Defaults to `false`. Supported only for fleets of type `maintain`.
  final pulumi.Input<bool?>? replaceUnhealthyInstances;
  /// Nested argument containing Spot configurations. Defined below.
  final pulumi.Input<FleetSpotOptions?>? spotOptions;
  /// Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Nested argument containing target capacity configurations. Defined below.
  final pulumi.Input<FleetTargetCapacitySpecification?>? targetCapacitySpecification;
  /// Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  final pulumi.Input<bool?>? terminateInstances;
  /// Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  final pulumi.Input<bool?>? terminateInstancesWithExpiration;
  /// The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  final pulumi.Input<String?>? type;
  /// The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final pulumi.Input<String?>? validFrom;
  /// The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  final pulumi.Input<String?>? validUntil;

  /// Creates a new [FleetState].
  /// [arn] The ARN of the fleet
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
  /// [tags] Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetCapacitySpecification] Nested argument containing target capacity configurations. Defined below.
  /// [terminateInstances] Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  /// [terminateInstancesWithExpiration] Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  /// [type] The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  /// [validFrom] The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  const FleetState({
    this.arn,
    this.context,
    this.excessCapacityTerminationPolicy,
    this.fleetInstanceSets,
    this.fleetState,
    this.fulfilledCapacity,
    this.fulfilledOnDemandCapacity,
    this.launchTemplateConfigs,
    this.onDemandOptions,
    this.region,
    this.replaceUnhealthyInstances,
    this.spotOptions,
    this.tags,
    this.tagsAll,
    this.targetCapacitySpecification,
    this.terminateInstances,
    this.terminateInstancesWithExpiration,
    this.type,
    this.validFrom,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'context': ?context,
      'excessCapacityTerminationPolicy': ?excessCapacityTerminationPolicy,
      'fleetInstanceSets': ?pulumi.Input.mapOptionalInputValue<List<FleetFleetInstanceSet>, List<Map<String, dynamic>>>(fleetInstanceSets, (value) => pulumi.Input.encodeList<FleetFleetInstanceSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fleetState': ?fleetState,
      'fulfilledCapacity': ?fulfilledCapacity,
      'fulfilledOnDemandCapacity': ?fulfilledOnDemandCapacity,
      'launchTemplateConfigs': ?pulumi.Input.mapOptionalInputValue<List<FleetLaunchTemplateConfig>, List<Map<String, dynamic>>>(launchTemplateConfigs, (value) => pulumi.Input.encodeList<FleetLaunchTemplateConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandOptions': ?pulumi.Input.mapOptionalInputValue<FleetOnDemandOptions, Map<String, dynamic>>(onDemandOptions, (value) => value.toMap()),
      'region': ?region,
      'replaceUnhealthyInstances': ?replaceUnhealthyInstances,
      'spotOptions': ?pulumi.Input.mapOptionalInputValue<FleetSpotOptions, Map<String, dynamic>>(spotOptions, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetCapacitySpecification': ?pulumi.Input.mapOptionalInputValue<FleetTargetCapacitySpecification, Map<String, dynamic>>(targetCapacitySpecification, (value) => value.toMap()),
      'terminateInstances': ?terminateInstances,
      'terminateInstancesWithExpiration': ?terminateInstancesWithExpiration,
      'type': ?type,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
    };
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excessCapacityTerminationPolicy: (() { final guardedValue = map['excessCapacityTerminationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fleetInstanceSets: (() { final guardedValue = map['fleetInstanceSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetFleetInstanceSet>(guardedValue, (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fleetState: (() { final guardedValue = map['fleetState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fulfilledCapacity: (() { final guardedValue = map['fulfilledCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      fulfilledOnDemandCapacity: (() { final guardedValue = map['fulfilledOnDemandCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      launchTemplateConfigs: (() { final guardedValue = map['launchTemplateConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetLaunchTemplateConfig>(guardedValue, (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onDemandOptions: (() { final guardedValue = map['onDemandOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetOnDemandOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceUnhealthyInstances: (() { final guardedValue = map['replaceUnhealthyInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spotOptions: (() { final guardedValue = map['spotOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetSpotOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetCapacitySpecification: (() { final guardedValue = map['targetCapacitySpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetTargetCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terminateInstances: (() { final guardedValue = map['terminateInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      terminateInstancesWithExpiration: (() { final guardedValue = map['terminateInstancesWithExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validFrom: (() { final guardedValue = map['validFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validUntil: (() { final guardedValue = map['validUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
