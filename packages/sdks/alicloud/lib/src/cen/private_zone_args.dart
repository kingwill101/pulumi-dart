// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_private_zone_private_zone_args_doc}
/// The set of arguments for PrivateZone.
/// {@endtemplate}
/// {@macro pulumi_cen_private_zone_private_zone_args_doc}
class PrivateZoneArgs {
  /// The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  final pulumi.Input<String> accessRegionId;

  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;

  /// The ID of the region where PrivateZone is deployed.
  ///
  /// -&gt;**NOTE:** The resource `alicloud.cen.PrivateZone` depends on the resource `alicloud.cen.InstanceAttachment`.
  final pulumi.Input<String> hostRegionId;

  /// The ID of the VPC that is associated with PrivateZone.
  final pulumi.Input<String> hostVpcId;

  /// Creates a new [PrivateZoneArgs].
  /// [accessRegionId] The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The ID of the region where PrivateZone is deployed.
  /// [hostVpcId] The ID of the VPC that is associated with PrivateZone.
  PrivateZoneArgs({
    required this.accessRegionId,
    required this.cenId,
    required this.hostRegionId,
    required this.hostVpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': accessRegionId,
      'cenId': cenId,
      'hostRegionId': hostRegionId,
      'hostVpcId': hostVpcId,
    };
  }

  factory PrivateZoneArgs.fromMap(Map<String, dynamic> map) {
    return PrivateZoneArgs(
      accessRegionId: pulumi.Input.fromValue(map['accessRegionId'] as String),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      hostRegionId: pulumi.Input.fromValue(map['hostRegionId'] as String),
      hostVpcId: pulumi.Input.fromValue(map['hostVpcId'] as String),
    );
  }
}
