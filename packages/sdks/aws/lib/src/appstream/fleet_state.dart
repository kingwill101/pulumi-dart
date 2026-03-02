// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_compute_capacity.dart';
import 'fleet_domain_join_info.dart';
import 'fleet_vpc_config.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetState {
  /// ARN of the appstream fleet.
  final pulumi.Input<String>? arn;
  /// Configuration block for the desired capacity of the fleet. See below.
  final pulumi.Input<FleetComputeCapacity>? computeCapacity;
  /// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
  final pulumi.Input<String>? createdTime;
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
  final pulumi.Input<String>? instanceType;
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
  /// State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  final pulumi.Input<String>? state;
  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  final pulumi.Input<String>? streamView;
  /// Map of tags to attach to AppStream instances.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for the VPC configuration for the image builder. See below.
  final pulumi.Input<FleetVpcConfig>? vpcConfig;

  /// Creates a new [FleetState].
  /// [arn] ARN of the appstream fleet.
  /// [computeCapacity] Configuration block for the desired capacity of the fleet. See below.
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
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
  /// [state] State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  /// [streamView] AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  /// [tags] Map of tags to attach to AppStream instances.
  /// [tagsAll] Optional.
  /// [vpcConfig] Configuration block for the VPC configuration for the image builder. See below.
  FleetState({
    this.arn,
    this.computeCapacity,
    this.createdTime,
    this.description,
    this.disconnectTimeoutInSeconds,
    this.displayName,
    this.domainJoinInfo,
    this.enableDefaultInternetAccess,
    this.fleetType,
    this.iamRoleArn,
    this.idleDisconnectTimeoutInSeconds,
    this.imageArn,
    this.imageName,
    this.instanceType,
    this.maxSessionsPerInstance,
    this.maxUserDurationInSeconds,
    this.name,
    this.region,
    this.state,
    this.streamView,
    this.tags,
    this.tagsAll,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeCapacity': ?pulumi.Input.mapOptionalInputValue<FleetComputeCapacity, Map<String, dynamic>>(computeCapacity, (value) => value.toMap()),
      'createdTime': ?createdTime,
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
      'instanceType': ?instanceType,
      'maxSessionsPerInstance': ?maxSessionsPerInstance,
      'maxUserDurationInSeconds': ?maxUserDurationInSeconds,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'streamView': ?streamView,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FleetVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      computeCapacity: map['computeCapacity'] == null ? null : (FleetComputeCapacity.fromMap((map['computeCapacity'] as Map).cast<String, dynamic>())).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disconnectTimeoutInSeconds: map['disconnectTimeoutInSeconds'] == null ? null : (map['disconnectTimeoutInSeconds'] as int).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      domainJoinInfo: map['domainJoinInfo'] == null ? null : (FleetDomainJoinInfo.fromMap((map['domainJoinInfo'] as Map).cast<String, dynamic>())).input(),
      enableDefaultInternetAccess: map['enableDefaultInternetAccess'] == null ? null : (map['enableDefaultInternetAccess'] as bool).input(),
      fleetType: map['fleetType'] == null ? null : (map['fleetType'] as String).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : (map['iamRoleArn'] as String).input(),
      idleDisconnectTimeoutInSeconds: map['idleDisconnectTimeoutInSeconds'] == null ? null : (map['idleDisconnectTimeoutInSeconds'] as int).input(),
      imageArn: map['imageArn'] == null ? null : (map['imageArn'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      maxSessionsPerInstance: map['maxSessionsPerInstance'] == null ? null : (map['maxSessionsPerInstance'] as int).input(),
      maxUserDurationInSeconds: map['maxUserDurationInSeconds'] == null ? null : (map['maxUserDurationInSeconds'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      streamView: map['streamView'] == null ? null : (map['streamView'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (FleetVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

