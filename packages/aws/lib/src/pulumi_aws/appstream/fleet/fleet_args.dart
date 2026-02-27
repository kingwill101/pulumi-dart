// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_compute_capacity/fleet_compute_capacity.dart';
import '../fleet_domain_join_info/fleet_domain_join_info.dart';
import '../fleet_vpc_config/fleet_vpc_config.dart';

/// The set of arguments for Fleet.
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

  FleetArgs({
    required this.computeCapacity,
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
    required this.instanceType,
    this.maxSessionsPerInstance,
    this.maxUserDurationInSeconds,
    this.name,
    this.region,
    this.streamView,
    this.tags,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeCapacity'] =
        pulumi.Input.mapInputValue<FleetComputeCapacity, Map<String, dynamic>>(
            computeCapacity, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disconnectTimeoutInSecondsValue = disconnectTimeoutInSeconds;
    if (disconnectTimeoutInSecondsValue != null) {
      map['disconnectTimeoutInSeconds'] = disconnectTimeoutInSecondsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final domainJoinInfoValue = domainJoinInfo;
    if (domainJoinInfoValue != null) {
      map['domainJoinInfo'] = pulumi.Input.mapOptionalInputValue<
          FleetDomainJoinInfo,
          Map<String, dynamic>>(domainJoinInfoValue, (value) => value.toMap());
    }
    final enableDefaultInternetAccessValue = enableDefaultInternetAccess;
    if (enableDefaultInternetAccessValue != null) {
      map['enableDefaultInternetAccess'] = enableDefaultInternetAccessValue;
    }
    final fleetTypeValue = fleetType;
    if (fleetTypeValue != null) {
      map['fleetType'] = fleetTypeValue;
    }
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final idleDisconnectTimeoutInSecondsValue = idleDisconnectTimeoutInSeconds;
    if (idleDisconnectTimeoutInSecondsValue != null) {
      map['idleDisconnectTimeoutInSeconds'] =
          idleDisconnectTimeoutInSecondsValue;
    }
    final imageArnValue = imageArn;
    if (imageArnValue != null) {
      map['imageArn'] = imageArnValue;
    }
    final imageNameValue = imageName;
    if (imageNameValue != null) {
      map['imageName'] = imageNameValue;
    }
    map['instanceType'] = instanceType;
    final maxSessionsPerInstanceValue = maxSessionsPerInstance;
    if (maxSessionsPerInstanceValue != null) {
      map['maxSessionsPerInstance'] = maxSessionsPerInstanceValue;
    }
    final maxUserDurationInSecondsValue = maxUserDurationInSeconds;
    if (maxUserDurationInSecondsValue != null) {
      map['maxUserDurationInSeconds'] = maxUserDurationInSecondsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final streamViewValue = streamView;
    if (streamViewValue != null) {
      map['streamView'] = streamViewValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<FleetVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      computeCapacity:
          pulumi.Input.asInput<FleetComputeCapacity>(map['computeCapacity']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disconnectTimeoutInSeconds:
          pulumi.Input.asOptionalInput<int>(map['disconnectTimeoutInSeconds']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      domainJoinInfo: pulumi.Input.asOptionalInput<FleetDomainJoinInfo>(
          map['domainJoinInfo']),
      enableDefaultInternetAccess: pulumi.Input.asOptionalInput<bool>(
          map['enableDefaultInternetAccess']),
      fleetType: pulumi.Input.asOptionalInput<String>(map['fleetType']),
      iamRoleArn: pulumi.Input.asOptionalInput<String>(map['iamRoleArn']),
      idleDisconnectTimeoutInSeconds: pulumi.Input.asOptionalInput<int>(
          map['idleDisconnectTimeoutInSeconds']),
      imageArn: pulumi.Input.asOptionalInput<String>(map['imageArn']),
      imageName: pulumi.Input.asOptionalInput<String>(map['imageName']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      maxSessionsPerInstance:
          pulumi.Input.asOptionalInput<int>(map['maxSessionsPerInstance']),
      maxUserDurationInSeconds:
          pulumi.Input.asOptionalInput<int>(map['maxUserDurationInSeconds']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      streamView: pulumi.Input.asOptionalInput<String>(map['streamView']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: pulumi.Input.asOptionalInput<FleetVpcConfig>(map['vpcConfig']),
    );
  }
}
