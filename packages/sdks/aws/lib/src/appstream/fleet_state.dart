// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_compute_capacity.dart';
import 'fleet_domain_join_info.dart';
import 'fleet_vpc_config.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetState {
  /// ARN of the appstream fleet.
  final pulumi.Input<String?>? arn;
  /// Configuration block for the desired capacity of the fleet. See below.
  final pulumi.Input<FleetComputeCapacity?>? computeCapacity;
  /// Date and time, in UTC and extended RFC 3339 format, when the fleet was created.
  final pulumi.Input<String?>? createdTime;
  /// Description to display.
  final pulumi.Input<String?>? description;
  /// Amount of time that a streaming session remains active after users disconnect.
  final pulumi.Input<int?>? disconnectTimeoutInSeconds;
  /// Human-readable friendly name for the AppStream fleet.
  final pulumi.Input<String?>? displayName;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below.
  final pulumi.Input<FleetDomainJoinInfo?>? domainJoinInfo;
  /// Enables or disables default internet access for the fleet.
  final pulumi.Input<bool?>? enableDefaultInternetAccess;
  /// Fleet type. Valid values are: `ON_DEMAND`, `ALWAYS_ON`
  final pulumi.Input<String?>? fleetType;
  /// ARN of the IAM role to apply to the fleet.
  final pulumi.Input<String?>? iamRoleArn;
  /// Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnectTimeoutInSeconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  final pulumi.Input<int?>? idleDisconnectTimeoutInSeconds;
  /// ARN of the public, private, or shared image to use.
  final pulumi.Input<String?>? imageArn;
  /// Name of the image used to create the fleet.
  final pulumi.Input<String?>? imageName;
  /// Instance type to use when launching fleet instances.
  final pulumi.Input<String?>? instanceType;
  /// Maximum number of user sessions on an instance. This only applies to multi-session fleets.
  final pulumi.Input<int?>? maxSessionsPerInstance;
  /// Maximum amount of time that a streaming session can remain active, in seconds.
  final pulumi.Input<int?>? maxUserDurationInSeconds;
  /// Unique name for the fleet.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  final pulumi.Input<String?>? state;
  /// AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  final pulumi.Input<String?>? streamView;
  /// Map of tags to attach to AppStream instances.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Configuration block for the VPC configuration for the image builder. See below.
  final pulumi.Input<FleetVpcConfig?>? vpcConfig;

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
  /// [idleDisconnectTimeoutInSeconds] Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the `disconnectTimeoutInSeconds` time interval begins. Defaults to `0`. Valid value is between `60` and `3600 `seconds.
  /// [imageArn] ARN of the public, private, or shared image to use.
  /// [imageName] Name of the image used to create the fleet.
  /// [instanceType] Instance type to use when launching fleet instances.
  /// [maxSessionsPerInstance] Maximum number of user sessions on an instance. This only applies to multi-session fleets.
  /// [maxUserDurationInSeconds] Maximum amount of time that a streaming session can remain active, in seconds.
  /// [name] Unique name for the fleet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the fleet. Can be `STARTING`, `RUNNING`, `STOPPING` or `STOPPED`
  /// [streamView] AppStream 2.0 view that is displayed to your users when they stream from the fleet. When `APP` is specified, only the windows of applications opened by users display. When `DESKTOP` is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to `APP`.
  /// [tags] Map of tags to attach to AppStream instances.
  /// [tagsAll] Optional.
  /// [vpcConfig] Configuration block for the VPC configuration for the image builder. See below.
  const FleetState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeCapacity: (() { final guardedValue = map['computeCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetComputeCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disconnectTimeoutInSeconds: (() { final guardedValue = map['disconnectTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainJoinInfo: (() { final guardedValue = map['domainJoinInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetDomainJoinInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableDefaultInternetAccess: (() { final guardedValue = map['enableDefaultInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fleetType: (() { final guardedValue = map['fleetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleDisconnectTimeoutInSeconds: (() { final guardedValue = map['idleDisconnectTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      imageArn: (() { final guardedValue = map['imageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSessionsPerInstance: (() { final guardedValue = map['maxSessionsPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxUserDurationInSeconds: (() { final guardedValue = map['maxUserDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamView: (() { final guardedValue = map['streamView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
