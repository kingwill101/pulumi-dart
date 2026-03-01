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
  /// ->**NOTE:** The resource `alicloud.cen.PrivateZone` depends on the resource `alicloud.cen.InstanceAttachment`.
  final pulumi.Input<String> hostRegionId;
  /// The ID of the VPC that is associated with PrivateZone.
  final pulumi.Input<String> hostVpcId;

  /// Creates a new [PrivateZoneArgs].
  /// [accessRegionId] The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The ID of the region where PrivateZone is deployed.
  /// [hostVpcId] The ID of the VPC that is associated with PrivateZone.
  PrivateZoneArgs({
    required pulumi.Output<String> accessRegionId,
    required pulumi.Output<String> cenId,
    required pulumi.Output<String> hostRegionId,
    required pulumi.Output<String> hostVpcId,
  }) :
      accessRegionId = pulumi.Input.asInput<String>(accessRegionId),
      cenId = pulumi.Input.asInput<String>(cenId),
      hostRegionId = pulumi.Input.asInput<String>(hostRegionId),
      hostVpcId = pulumi.Input.asInput<String>(hostVpcId);

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
      accessRegionId: pulumi.Output.create<String>(map['accessRegionId'] as String),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      hostRegionId: pulumi.Output.create<String>(map['hostRegionId'] as String),
      hostVpcId: pulumi.Output.create<String>(map['hostVpcId'] as String),
    );
  }
}

