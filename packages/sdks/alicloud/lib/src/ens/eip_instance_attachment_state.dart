// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EipInstanceAttachment resources.
class EipInstanceAttachmentState {
  /// The first ID of the resource
  final pulumi.Input<String>? allocationId;

  /// Instance ID
  final pulumi.Input<String>? instanceId;

  /// The type of the EIP instance. Value:
  /// - `Nat`:NAT gateway.
  /// - `SlbInstance`: Server Load Balancer (ELB).
  /// - `NetworkInterface`: Secondary ENI.
  /// - `EnsInstance` (default): The ENS instance.
  final pulumi.Input<String>? instanceType;

  /// Indicates whether the EIP is a backup EIP. Value:
  /// - true: Spare.
  /// - false: not standby.
  final pulumi.Input<bool>? standby;

  /// The status of the EIP.
  final pulumi.Input<String>? status;

  /// Creates a new [EipInstanceAttachmentState].
  /// [allocationId] The first ID of the resource
  /// [instanceId] Instance ID
  /// [instanceType] The type of the EIP instance. Value:
  /// [standby] Indicates whether the EIP is a backup EIP. Value:
  /// [status] The status of the EIP.
  EipInstanceAttachmentState({
    this.allocationId,
    this.instanceId,
    this.instanceType,
    this.standby,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'standby': ?standby,
      'status': ?status,
    };
  }

  factory EipInstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return EipInstanceAttachmentState(
      allocationId: (() {
        final guardedValue = map['allocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standby: (() {
        final guardedValue = map['standby'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
