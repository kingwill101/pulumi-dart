// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_compute_capacity.dart';
import 'fleet_domain_join_info.dart';
import 'fleet_vpc_config.dart';

/// {@template pulumi_appstream_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_appstream_fleet_fleet_args_doc}
class FleetArgs {
  /// Configuration block for the desired capacity of the fleet. See below.
  final pulumi.Input<FleetComputeCapacity> computeCapacity;
  /// Description to display.
  final pulumi.Input<String>? description;
  /// Amount of time that a streaming session remains active after users disconnect.
  final pulumi.Input<int>? disconnectTimeoutInSeconds;
  /// Human-readable friendly name for the AppStream fleet.
  final pulumi.Input<String>? displayName;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  final pulumi.Input<FleetDomainJoinInfo>? domainJoinInfo;
  /// Enables or disables default internet access for the fleet.
  final pulumi.Input<bool>? enableDefaultInternetAccess;
  /// Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  final pulumi.Input<String>? fleetType;
  /// ARN of the IAM role to apply to the fleet.
  final pulumi.Input<String>? iamRoleArn;
  /// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnect_timeout_in_seconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  final pulumi.Input<int>? idleDisconnectTimeoutInSeconds;
  /// ARN of the public, private, or shared image to use.
  final pulumi.Input<String>? imageArn;
  /// Name of the image used to create the fleet.
  final pulumi.Input<String>? imageName;
  /// Instance type to use when launching fleet instances.
  final pulumi.Input<String> instanceType;
  /// The maximum number of user sessions on an instance. This only applies to multi-session fleets.
  final pulumi.Input<int>? maxSessionsPerInstance;
  /// Maximum amount of time that a streaming session can remain active, in seconds.
  final pulumi.Input<int>? maxUserDurationInSeconds;
  /// Unique name for the fleet.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  final pulumi.Input<String>? streamView;
  /// Map of tags to attach to AppStream instances.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block for the VPC configuration for the image builder. See below.
  final pulumi.Input<FleetVpcConfig>? vpcConfig;

  /// Creates a new [FleetArgs].
  /// [computeCapacity] Configuration block for the desired capacity of the fleet. See below.
  /// [description] Description to display.
  /// [disconnectTimeoutInSeconds] Amount of time that a streaming session remains active after users disconnect.
  /// [displayName] Human-readable friendly name for the AppStream fleet.
  /// [domainJoinInfo] Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  /// [enableDefaultInternetAccess] Enables or disables default internet access for the fleet.
  /// [fleetType] Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  /// [iamRoleArn] ARN of the IAM role to apply to the fleet.
  /// [idleDisconnectTimeoutInSeconds] Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnect_timeout_in_seconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  /// [imageArn] ARN of the public, private, or shared image to use.
  /// [imageName] Name of the image used to create the fleet.
  /// [instanceType] Instance type to use when launching fleet instances.
  /// [maxSessionsPerInstance] The maximum number of user sessions on an instance. This only applies to multi-session fleets.
  /// [maxUserDurationInSeconds] Maximum amount of time that a streaming session can remain active, in seconds.
  /// [name] Unique name for the fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streamView] AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  /// [tags] Map of tags to attach to AppStream instances.
  /// [vpcConfig] Configuration block for the VPC configuration for the image builder. See below.
  FleetArgs({
    required FleetComputeCapacity computeCapacity,
    String? description,
    int? disconnectTimeoutInSeconds,
    String? displayName,
    FleetDomainJoinInfo? domainJoinInfo,
    bool? enableDefaultInternetAccess,
    String? fleetType,
    String? iamRoleArn,
    int? idleDisconnectTimeoutInSeconds,
    String? imageArn,
    String? imageName,
    required String instanceType,
    int? maxSessionsPerInstance,
    int? maxUserDurationInSeconds,
    String? name,
    String? region,
    String? streamView,
    Map<String, String>? tags,
    FleetVpcConfig? vpcConfig,
  }) :
      computeCapacity = pulumi.Input.asInput<FleetComputeCapacity>(computeCapacity),
      description = pulumi.Input.asOptionalInput<String>(description),
      disconnectTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(disconnectTimeoutInSeconds),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domainJoinInfo = pulumi.Input.asOptionalInput<FleetDomainJoinInfo>(domainJoinInfo),
      enableDefaultInternetAccess = pulumi.Input.asOptionalInput<bool>(enableDefaultInternetAccess),
      fleetType = pulumi.Input.asOptionalInput<String>(fleetType),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      idleDisconnectTimeoutInSeconds = pulumi.Input.asOptionalInput<int>(idleDisconnectTimeoutInSeconds),
      imageArn = pulumi.Input.asOptionalInput<String>(imageArn),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      maxSessionsPerInstance = pulumi.Input.asOptionalInput<int>(maxSessionsPerInstance),
      maxUserDurationInSeconds = pulumi.Input.asOptionalInput<int>(maxUserDurationInSeconds),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      streamView = pulumi.Input.asOptionalInput<String>(streamView),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcConfig = pulumi.Input.asOptionalInput<FleetVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCapacity': pulumi.Input.mapInputValue<FleetComputeCapacity, Map<String, dynamic>>(computeCapacity, (value) => value.toMap()),
      'description': ?description,
      'disconnectTimeoutInSeconds': ?disconnectTimeoutInSeconds,
      'displayName': ?displayName,
      'domainJoinInfo': ?pulumi.Input.mapOptionalInputValue<FleetDomainJoinInfo, Map<String, dynamic>>(domainJoinInfo, (value) => value.toMap()),
      'enableDefaultInternetAccess': ?enableDefaultInternetAccess,
      'fleetType': ?fleetType,
      'iamRoleArn': ?iamRoleArn,
      'idleDisconnectTimeoutInSeconds': ?idleDisconnectTimeoutInSeconds,
      'imageArn': ?imageArn,
      'imageName': ?imageName,
      'instanceType': instanceType,
      'maxSessionsPerInstance': ?maxSessionsPerInstance,
      'maxUserDurationInSeconds': ?maxUserDurationInSeconds,
      'name': ?name,
      'region': ?region,
      'streamView': ?streamView,
      'tags': ?tags,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FleetVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      computeCapacity: FleetComputeCapacity.fromMap((map['computeCapacity'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      disconnectTimeoutInSeconds: map['disconnectTimeoutInSeconds'] == null ? null : map['disconnectTimeoutInSeconds'] as int,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      domainJoinInfo: map['domainJoinInfo'] == null ? null : FleetDomainJoinInfo.fromMap((map['domainJoinInfo'] as Map).cast<String, dynamic>()),
      enableDefaultInternetAccess: map['enableDefaultInternetAccess'] == null ? null : map['enableDefaultInternetAccess'] as bool,
      fleetType: map['fleetType'] == null ? null : map['fleetType'] as String,
      iamRoleArn: map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      idleDisconnectTimeoutInSeconds: map['idleDisconnectTimeoutInSeconds'] == null ? null : map['idleDisconnectTimeoutInSeconds'] as int,
      imageArn: map['imageArn'] == null ? null : map['imageArn'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      instanceType: map['instanceType'] as String,
      maxSessionsPerInstance: map['maxSessionsPerInstance'] == null ? null : map['maxSessionsPerInstance'] as int,
      maxUserDurationInSeconds: map['maxUserDurationInSeconds'] == null ? null : map['maxUserDurationInSeconds'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      streamView: map['streamView'] == null ? null : map['streamView'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcConfig: map['vpcConfig'] == null ? null : FleetVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

