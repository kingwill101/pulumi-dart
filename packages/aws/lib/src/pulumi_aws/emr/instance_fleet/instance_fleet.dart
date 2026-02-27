import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_fleet_instance_type_config/instance_fleet_instance_type_config.dart';
import '../instance_fleet_launch_specifications/instance_fleet_launch_specifications.dart';
import 'instance_fleet_args.dart';

/// Provides an Elastic MapReduce Cluster Instance Fleet configuration.
/// See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/emr/) for more information.
///
/// > **NOTE:** At this time, Instance Fleets cannot be destroyed through the API nor
/// web interface. Instance Fleets are destroyed when the EMR Cluster is destroyed.
/// the provider will resize any Instance Fleet to zero when destroying the resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR Instance Fleet using the EMR Cluster identifier and Instance Fleet identifier separated by a forward slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:emr/instanceFleet:InstanceFleet example j-123456ABCDEF/if-15EK4O09RZLNR
/// ```
class InstanceFleet extends pulumi.CustomResource {
  /// ID of the EMR Cluster to attach to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterId;

  /// Configuration block for instance fleet
  late final pulumi.Output<List<InstanceFleetInstanceTypeConfig>?>
      instanceTypeConfigs;

  /// Configuration block for launch specification
  late final pulumi.Output<InstanceFleetLaunchSpecifications?>
      launchSpecifications;

  /// Friendly name given to the instance fleet.
  late final pulumi.Output<String> name;

  /// The number of On-Demand units that have been provisioned for the instance
  /// fleet to fulfill TargetOnDemandCapacity. This provisioned capacity might be less than or greater than TargetOnDemandCapacity.
  late final pulumi.Output<int> provisionedOnDemandCapacity;

  /// The number of Spot units that have been provisioned for this instance fleet
  /// to fulfill TargetSpotCapacity. This provisioned capacity might be less than or greater than TargetSpotCapacity.
  late final pulumi.Output<int> provisionedSpotCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision.
  late final pulumi.Output<int?> targetOnDemandCapacity;

  /// The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.
  late final pulumi.Output<int?> targetSpotCapacity;

  InstanceFleet(
    String name, {
    InstanceFleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emr/instanceFleet:InstanceFleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.instanceTypeConfigs =
        registerOutput<List<InstanceFleetInstanceTypeConfig>?>(
            'instanceTypeConfigs');
    this.launchSpecifications =
        registerOutput<InstanceFleetLaunchSpecifications?>(
            'launchSpecifications');
    this.name = registerOutput<String>('name');
    this.provisionedOnDemandCapacity =
        registerOutput<int>('provisionedOnDemandCapacity');
    this.provisionedSpotCapacity =
        registerOutput<int>('provisionedSpotCapacity');
    this.region = registerOutput<String>('region');
    this.targetOnDemandCapacity =
        registerOutput<int?>('targetOnDemandCapacity');
    this.targetSpotCapacity = registerOutput<int?>('targetSpotCapacity');
  }
}
