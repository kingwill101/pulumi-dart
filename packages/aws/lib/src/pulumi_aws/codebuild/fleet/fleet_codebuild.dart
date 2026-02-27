import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_compute_configuration/fleet_compute_configuration.dart';
import '../fleet_scaling_configuration/fleet_scaling_configuration.dart';
import '../fleet_status/fleet_status.dart';
import '../fleet_vpc_config/fleet_vpc_config_codebuild.dart';
import 'fleet_codebuild_args.dart';

/// Provides a CodeBuild Fleet Resource.
///
/// ## Example Usage
///
///
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild fleet.
///
///
/// Using `pulumi import`, import CodeBuild Fleet using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/fleet:Fleet name fleet-name
/// ```
class FleetCodebuild extends pulumi.CustomResource {
  /// ARN of the Fleet.
  late final pulumi.Output<String> arn;

  /// Number of machines allocated to the ﬂeet.
  late final pulumi.Output<int> baseCapacity;

  /// The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  late final pulumi.Output<FleetComputeConfiguration?> computeConfiguration;

  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  late final pulumi.Output<String> computeType;

  /// Creation time of the fleet.
  late final pulumi.Output<String> created;

  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> environmentType;

  /// The service role associated with the compute fleet.
  late final pulumi.Output<String?> fleetServiceRole;

  /// The Amazon Machine Image (AMI) of the compute fleet.
  late final pulumi.Output<String?> imageId;

  /// Last modification time of the fleet.
  late final pulumi.Output<String> lastModified;

  /// Fleet name.
  late final pulumi.Output<String> name;

  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  late final pulumi.Output<String> overflowBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  late final pulumi.Output<FleetScalingConfiguration?> scalingConfiguration;

  /// Nested attribute containing information about the current status of the fleet.
  late final pulumi.Output<List<FleetStatus>> statuses;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block. See `vpc_config` below.
  late final pulumi.Output<List<FleetVpcConfigCodebuild>?> vpcConfigs;

  FleetCodebuild(
    String name, {
    FleetCodebuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/fleet:Fleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.baseCapacity = registerOutput<int>('baseCapacity');
    this.computeConfiguration =
        registerOutput<FleetComputeConfiguration?>('computeConfiguration');
    this.computeType = registerOutput<String>('computeType');
    this.created = registerOutput<String>('created');
    this.environmentType = registerOutput<String>('environmentType');
    this.fleetServiceRole = registerOutput<String?>('fleetServiceRole');
    this.imageId = registerOutput<String?>('imageId');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.overflowBehavior = registerOutput<String>('overflowBehavior');
    this.region = registerOutput<String>('region');
    this.scalingConfiguration =
        registerOutput<FleetScalingConfiguration?>('scalingConfiguration');
    this.statuses = registerOutput<List<FleetStatus>>('statuses');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfigs =
        registerOutput<List<FleetVpcConfigCodebuild>?>('vpcConfigs');
  }
}
