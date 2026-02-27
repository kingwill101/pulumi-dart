import 'package:pulumi/pulumi.dart';
import '../fleet_compute_capacity/fleet_compute_capacity.dart';
import '../fleet_domain_join_info/fleet_domain_join_info.dart';
import '../fleet_vpc_config/fleet_vpc_config.dart';
import 'fleet_args.dart';

/// Provides an AppStream fleet.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.Fleet` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/fleet:Fleet example fleetNameExample
/// ```
class Fleet extends CustomResource {
  /// ARN of the appstream fleet.
  late final Output<String> arn;

  /// Configuration block for the desired capacity of the fleet. See below.
  late final Output<FleetComputeCapacity> computeCapacity;

  /// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
  late final Output<String> createdTime;

  /// Description to display.
  late final Output<String> description;

  /// Amount of time that a streaming session remains active after users disconnect.
  late final Output<int> disconnectTimeoutInSeconds;

  /// Human-readable friendly name for the AppStream fleet.
  late final Output<String> displayName;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  late final Output<FleetDomainJoinInfo> domainJoinInfo;

  /// Enables or disables default internet access for the fleet.
  late final Output<bool> enableDefaultInternetAccess;

  /// Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  late final Output<String> fleetType;

  /// ARN of the IAM role to apply to the fleet.
  late final Output<String> iamRoleArn;

  /// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnect_timeout_in_seconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  late final Output<int?> idleDisconnectTimeoutInSeconds;

  /// ARN of the public, private, or shared image to use.
  late final Output<String> imageArn;

  /// Name of the image used to create the fleet.
  late final Output<String> imageName;

  /// Instance type to use when launching fleet instances.
  late final Output<String> instanceType;

  /// The maximum number of user sessions on an instance. This only applies to multi-session fleets.
  late final Output<int?> maxSessionsPerInstance;

  /// Maximum amount of time that a streaming session can remain active, in seconds.
  late final Output<int> maxUserDurationInSeconds;

  /// Unique name for the fleet.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  late final Output<String> state;

  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  late final Output<String> streamView;

  /// Map of tags to attach to AppStream instances.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for the VPC configuration for the image builder. See below.
  late final Output<FleetVpcConfig> vpcConfig;

  Fleet(
    String name, {
    FleetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/fleet:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeCapacity =
        registerOutput<FleetComputeCapacity>('computeCapacity');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.disconnectTimeoutInSeconds =
        registerOutput<int>('disconnectTimeoutInSeconds');
    this.displayName = registerOutput<String>('displayName');
    this.domainJoinInfo = registerOutput<FleetDomainJoinInfo>('domainJoinInfo');
    this.enableDefaultInternetAccess =
        registerOutput<bool>('enableDefaultInternetAccess');
    this.fleetType = registerOutput<String>('fleetType');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.idleDisconnectTimeoutInSeconds =
        registerOutput<int?>('idleDisconnectTimeoutInSeconds');
    this.imageArn = registerOutput<String>('imageArn');
    this.imageName = registerOutput<String>('imageName');
    this.instanceType = registerOutput<String>('instanceType');
    this.maxSessionsPerInstance =
        registerOutput<int?>('maxSessionsPerInstance');
    this.maxUserDurationInSeconds =
        registerOutput<int>('maxUserDurationInSeconds');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.streamView = registerOutput<String>('streamView');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<FleetVpcConfig>('vpcConfig');
  }
}
