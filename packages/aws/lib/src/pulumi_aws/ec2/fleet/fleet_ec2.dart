import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_fleet_instance_set/fleet_fleet_instance_set.dart';
import '../fleet_launch_template_config/fleet_launch_template_config.dart';
import '../fleet_on_demand_options/fleet_on_demand_options.dart';
import '../fleet_spot_options/fleet_spot_options.dart';
import '../fleet_target_capacity_specification/fleet_target_capacity_specification.dart';
import 'fleet_ec2_args.dart';

/// Provides a resource to manage EC2 Fleets.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.Fleet` using the Fleet identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/fleet:Fleet example fleet-b9b55d27-c5fc-41ac-a6f3-48fcc91f080c
/// ```
class FleetEc2 extends pulumi.CustomResource {
  /// The ARN of the fleet
  late final pulumi.Output<String> arn;

  /// Reserved.
  late final pulumi.Output<String?> context;

  /// Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: `no-termination`, `termination`. Defaults to `termination`. Supported only for fleets of type `maintain`.
  late final pulumi.Output<String?> excessCapacityTerminationPolicy;

  /// Information about the instances that were launched by the fleet. Available only when `type` is set to `instant`.
  late final pulumi.Output<List<FleetFleetInstanceSet>> fleetInstanceSets;

  /// The state of the EC2 Fleet.
  late final pulumi.Output<String> fleetState;

  /// The number of units fulfilled by this request compared to the set target capacity.
  late final pulumi.Output<double> fulfilledCapacity;

  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  late final pulumi.Output<double> fulfilledOnDemandCapacity;

  /// Nested argument containing EC2 Launch Template configurations. Defined below.
  late final pulumi.Output<List<FleetLaunchTemplateConfig>>
      launchTemplateConfigs;

  /// Nested argument containing On-Demand configurations. Defined below.
  late final pulumi.Output<FleetOnDemandOptions?> onDemandOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether EC2 Fleet should replace unhealthy instances. Defaults to `false`. Supported only for fleets of type `maintain`.
  late final pulumi.Output<bool?> replaceUnhealthyInstances;

  /// Nested argument containing Spot configurations. Defined below.
  late final pulumi.Output<FleetSpotOptions?> spotOptions;

  /// Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Nested argument containing target capacity configurations. Defined below.
  late final pulumi.Output<FleetTargetCapacitySpecification>
      targetCapacitySpecification;

  /// Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to `false`.
  late final pulumi.Output<bool?> terminateInstances;

  /// Whether running instances should be terminated when the EC2 Fleet expires. Defaults to `false`.
  late final pulumi.Output<bool?> terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: `maintain`, `request`, `instant`. Defaults to `maintain`.
  late final pulumi.Output<String?> type;

  /// The start date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final pulumi.Output<String?> validFrom;

  /// The end date and time of the request, in UTC format (for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  late final pulumi.Output<String?> validUntil;

  FleetEc2(
    String name, {
    FleetEc2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.context = registerOutput<String?>('context');
    this.excessCapacityTerminationPolicy =
        registerOutput<String?>('excessCapacityTerminationPolicy');
    this.fleetInstanceSets =
        registerOutput<List<FleetFleetInstanceSet>>('fleetInstanceSets');
    this.fleetState = registerOutput<String>('fleetState');
    this.fulfilledCapacity = registerOutput<double>('fulfilledCapacity');
    this.fulfilledOnDemandCapacity =
        registerOutput<double>('fulfilledOnDemandCapacity');
    this.launchTemplateConfigs =
        registerOutput<List<FleetLaunchTemplateConfig>>(
            'launchTemplateConfigs');
    this.onDemandOptions =
        registerOutput<FleetOnDemandOptions?>('onDemandOptions');
    this.region = registerOutput<String>('region');
    this.replaceUnhealthyInstances =
        registerOutput<bool?>('replaceUnhealthyInstances');
    this.spotOptions = registerOutput<FleetSpotOptions?>('spotOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetCapacitySpecification =
        registerOutput<FleetTargetCapacitySpecification>(
            'targetCapacitySpecification');
    this.terminateInstances = registerOutput<bool?>('terminateInstances');
    this.terminateInstancesWithExpiration =
        registerOutput<bool?>('terminateInstancesWithExpiration');
    this.type = registerOutput<String?>('type');
    this.validFrom = registerOutput<String?>('validFrom');
    this.validUntil = registerOutput<String?>('validUntil');
  }
}
