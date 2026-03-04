// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_eip_instance_attachment_eip_instance_attachment_args_doc}
/// The set of arguments for EipInstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_ens_eip_instance_attachment_eip_instance_attachment_args_doc}
class EipInstanceAttachmentArgs {
  /// The first ID of the resource
  final pulumi.Input<String> allocationId;

  /// Instance ID
  final pulumi.Input<String> instanceId;

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

  /// Creates a new [EipInstanceAttachmentArgs].
  /// [allocationId] The first ID of the resource
  /// [instanceId] Instance ID
  /// [instanceType] The type of the EIP instance. Value:
  /// [standby] Indicates whether the EIP is a backup EIP. Value:
  EipInstanceAttachmentArgs({
    required this.allocationId,
    required this.instanceId,
    this.instanceType,
    this.standby,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'instanceId': instanceId,
      'instanceType': ?instanceType,
      'standby': ?standby,
    };
  }

  factory EipInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return EipInstanceAttachmentArgs(
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
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
    );
  }
}
