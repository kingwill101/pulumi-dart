// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateZone resources.
class PrivateZoneState {
  /// The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  final pulumi.Input<String>? accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The ID of the region where PrivateZone is deployed.
  ///
  /// ->**NOTE:** The resource `alicloud.cen.PrivateZone` depends on the resource `alicloud.cen.InstanceAttachment`.
  final pulumi.Input<String>? hostRegionId;
  /// The ID of the VPC that is associated with PrivateZone.
  final pulumi.Input<String>? hostVpcId;
  /// The status of the Private Zone.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateZoneState].
  /// [accessRegionId] The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The ID of the region where PrivateZone is deployed.
  /// [hostVpcId] The ID of the VPC that is associated with PrivateZone.
  /// [status] The status of the Private Zone.
  PrivateZoneState({
    pulumi.Output<String>? accessRegionId,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? hostRegionId,
    pulumi.Output<String>? hostVpcId,
    pulumi.Output<String>? status,
  }) :
      accessRegionId = pulumi.Input.asOptionalInput<String>(accessRegionId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      hostRegionId = pulumi.Input.asOptionalInput<String>(hostRegionId),
      hostVpcId = pulumi.Input.asOptionalInput<String>(hostVpcId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': ?accessRegionId,
      'cenId': ?cenId,
      'hostRegionId': ?hostRegionId,
      'hostVpcId': ?hostVpcId,
      'status': ?status,
    };
  }

  factory PrivateZoneState.fromMap(Map<String, dynamic> map) {
    return PrivateZoneState(
      accessRegionId: map['accessRegionId'] == null ? null : pulumi.Output.create<String>(map['accessRegionId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      hostRegionId: map['hostRegionId'] == null ? null : pulumi.Output.create<String>(map['hostRegionId'] as String),
      hostVpcId: map['hostVpcId'] == null ? null : pulumi.Output.create<String>(map['hostVpcId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

