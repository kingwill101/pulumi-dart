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
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<List<FleetLaunchTemplateConfig>>? launchTemplateConfigs;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Nested argument containing target capacity configurations. Defined below.
  final pulumi.Input<FleetTargetCapacitySpecification>? targetCapacitySpecification;
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
  /// [tags] Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetCapacitySpecification] Nested argument containing target capacity configurations. Defined below.
  /// [terminateInstances] Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  /// [terminateInstancesWithExpiration] Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  /// [type] The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  /// [validFrom] The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  FleetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? context,
    pulumi.Output<String>? excessCapacityTerminationPolicy,
    pulumi.Output<List<FleetFleetInstanceSet>>? fleetInstanceSets,
    pulumi.Output<String>? fleetState,
    pulumi.Output<double>? fulfilledCapacity,
    pulumi.Output<double>? fulfilledOnDemandCapacity,
    pulumi.Output<List<FleetLaunchTemplateConfig>>? launchTemplateConfigs,
    pulumi.Output<FleetOnDemandOptions>? onDemandOptions,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? replaceUnhealthyInstances,
    pulumi.Output<FleetSpotOptions>? spotOptions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<FleetTargetCapacitySpecification>? targetCapacitySpecification,
    pulumi.Output<bool>? terminateInstances,
    pulumi.Output<bool>? terminateInstancesWithExpiration,
    pulumi.Output<String>? type,
    pulumi.Output<String>? validFrom,
    pulumi.Output<String>? validUntil,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      context = pulumi.Input.asOptionalInput<String>(context),
      excessCapacityTerminationPolicy = pulumi.Input.asOptionalInput<String>(excessCapacityTerminationPolicy),
      fleetInstanceSets = pulumi.Input.asOptionalInput<List<FleetFleetInstanceSet>>(fleetInstanceSets),
      fleetState = pulumi.Input.asOptionalInput<String>(fleetState),
      fulfilledCapacity = pulumi.Input.asOptionalInput<double>(fulfilledCapacity),
      fulfilledOnDemandCapacity = pulumi.Input.asOptionalInput<double>(fulfilledOnDemandCapacity),
      launchTemplateConfigs = pulumi.Input.asOptionalInput<List<FleetLaunchTemplateConfig>>(launchTemplateConfigs),
      onDemandOptions = pulumi.Input.asOptionalInput<FleetOnDemandOptions>(onDemandOptions),
      region = pulumi.Input.asOptionalInput<String>(region),
      replaceUnhealthyInstances = pulumi.Input.asOptionalInput<bool>(replaceUnhealthyInstances),
      spotOptions = pulumi.Input.asOptionalInput<FleetSpotOptions>(spotOptions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetCapacitySpecification = pulumi.Input.asOptionalInput<FleetTargetCapacitySpecification>(targetCapacitySpecification),
      terminateInstances = pulumi.Input.asOptionalInput<bool>(terminateInstances),
      terminateInstancesWithExpiration = pulumi.Input.asOptionalInput<bool>(terminateInstancesWithExpiration),
      type = pulumi.Input.asOptionalInput<String>(type),
      validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
      validUntil = pulumi.Input.asOptionalInput<String>(validUntil);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      excessCapacityTerminationPolicy: map['excessCapacityTerminationPolicy'] == null ? null : pulumi.Output.create<String>(map['excessCapacityTerminationPolicy'] as String),
      fleetInstanceSets: map['fleetInstanceSets'] == null ? null : pulumi.Output.create<List<FleetFleetInstanceSet>>(pulumi.Input.decodeList<FleetFleetInstanceSet>(map['fleetInstanceSets'], (value) => FleetFleetInstanceSet.fromMap((value as Map).cast<String, dynamic>()))),
      fleetState: map['fleetState'] == null ? null : pulumi.Output.create<String>(map['fleetState'] as String),
      fulfilledCapacity: map['fulfilledCapacity'] == null ? null : pulumi.Output.create<double>(map['fulfilledCapacity'] as double),
      fulfilledOnDemandCapacity: map['fulfilledOnDemandCapacity'] == null ? null : pulumi.Output.create<double>(map['fulfilledOnDemandCapacity'] as double),
      launchTemplateConfigs: map['launchTemplateConfigs'] == null ? null : pulumi.Output.create<List<FleetLaunchTemplateConfig>>(pulumi.Input.decodeList<FleetLaunchTemplateConfig>(map['launchTemplateConfigs'], (value) => FleetLaunchTemplateConfig.fromMap((value as Map).cast<String, dynamic>()))),
      onDemandOptions: map['onDemandOptions'] == null ? null : pulumi.Output.create<FleetOnDemandOptions>(FleetOnDemandOptions.fromMap((map['onDemandOptions'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replaceUnhealthyInstances: map['replaceUnhealthyInstances'] == null ? null : pulumi.Output.create<bool>(map['replaceUnhealthyInstances'] as bool),
      spotOptions: map['spotOptions'] == null ? null : pulumi.Output.create<FleetSpotOptions>(FleetSpotOptions.fromMap((map['spotOptions'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetCapacitySpecification: map['targetCapacitySpecification'] == null ? null : pulumi.Output.create<FleetTargetCapacitySpecification>(FleetTargetCapacitySpecification.fromMap((map['targetCapacitySpecification'] as Map).cast<String, dynamic>())),
      terminateInstances: map['terminateInstances'] == null ? null : pulumi.Output.create<bool>(map['terminateInstances'] as bool),
      terminateInstancesWithExpiration: map['terminateInstancesWithExpiration'] == null ? null : pulumi.Output.create<bool>(map['terminateInstancesWithExpiration'] as bool),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      validFrom: map['validFrom'] == null ? null : pulumi.Output.create<String>(map['validFrom'] as String),
      validUntil: map['validUntil'] == null ? null : pulumi.Output.create<String>(map['validUntil'] as String),
    );
  }
}

