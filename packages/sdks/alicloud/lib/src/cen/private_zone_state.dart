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
  /// -&gt;**NOTE:** The resource `alicloud.cen.PrivateZone` depends on the resource `alicloud.cen.InstanceAttachment`.
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
    this.accessRegionId,
    this.cenId,
    this.hostRegionId,
    this.hostVpcId,
    this.status,
  });

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
      accessRegionId: (() { final guardedValue = map['accessRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostRegionId: (() { final guardedValue = map['hostRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostVpcId: (() { final guardedValue = map['hostVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

