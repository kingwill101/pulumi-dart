import 'package:pulumi/pulumi.dart';
import '../fleet_certificate_configuration/fleet_certificate_configuration.dart';
import '../fleet_ec2_inbound_permission/fleet_ec2_inbound_permission.dart';
import '../fleet_resource_creation_limit_policy/fleet_resource_creation_limit_policy.dart';
import '../fleet_runtime_configuration/fleet_runtime_configuration.dart';
import 'fleet_args4.dart';

/// Provides a GameLift Fleet resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Fleets using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/fleet:Fleet example <fleet-id>
/// ```
class Fleet4 extends CustomResource {
  /// Fleet ARN.
  late final Output<String> arn;

  /// Build ARN.
  late final Output<String> buildArn;

  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  late final Output<String?> buildId;

  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  late final Output<FleetCertificateConfiguration> certificateConfiguration;

  /// Human-readable description of the fleet.
  late final Output<String?> description;

  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  late final Output<List<FleetEc2InboundPermission>> ec2InboundPermissions;

  /// Name of an EC2 instance typeE.g., `t2.micro`
  late final Output<String> ec2InstanceType;

  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  late final Output<String?> fleetType;

  /// ARN of an IAM role that instances in the fleet can assume.
  late final Output<String?> instanceRoleArn;
  late final Output<List<String>> logPaths;

  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  late final Output<List<String>> metricGroups;

  /// The name of the fleet.
  late final Output<String> name;

  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  late final Output<String?> newGameSessionProtectionPolicy;

  /// Operating system of the fleet's computing resources.
  late final Output<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  late final Output<FleetResourceCreationLimitPolicy?>
      resourceCreationLimitPolicy;

  /// Instructions for launching server processes on each instance in the fleet. See below.
  late final Output<FleetRuntimeConfiguration?> runtimeConfiguration;

  /// Script ARN.
  late final Output<String> scriptArn;

  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  late final Output<String?> scriptId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Fleet4(
    String name, {
    FleetArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.buildArn = registerOutput<String>('buildArn');
    this.buildId = registerOutput<String?>('buildId');
    this.certificateConfiguration =
        registerOutput<FleetCertificateConfiguration>(
            'certificateConfiguration');
    this.description = registerOutput<String?>('description');
    this.ec2InboundPermissions =
        registerOutput<List<FleetEc2InboundPermission>>(
            'ec2InboundPermissions');
    this.ec2InstanceType = registerOutput<String>('ec2InstanceType');
    this.fleetType = registerOutput<String?>('fleetType');
    this.instanceRoleArn = registerOutput<String?>('instanceRoleArn');
    this.logPaths = registerOutput<List<String>>('logPaths');
    this.metricGroups = registerOutput<List<String>>('metricGroups');
    this.name = registerOutput<String>('name');
    this.newGameSessionProtectionPolicy =
        registerOutput<String?>('newGameSessionProtectionPolicy');
    this.operatingSystem = registerOutput<String>('operatingSystem');
    this.region = registerOutput<String>('region');
    this.resourceCreationLimitPolicy =
        registerOutput<FleetResourceCreationLimitPolicy?>(
            'resourceCreationLimitPolicy');
    this.runtimeConfiguration =
        registerOutput<FleetRuntimeConfiguration?>('runtimeConfiguration');
    this.scriptArn = registerOutput<String>('scriptArn');
    this.scriptId = registerOutput<String?>('scriptId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
