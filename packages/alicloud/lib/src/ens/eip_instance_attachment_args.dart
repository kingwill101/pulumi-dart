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
    required String allocationId,
    required String instanceId,
    String? instanceType,
    bool? standby,
  }) :
      allocationId = pulumi.Input.asInput<String>(allocationId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      standby = pulumi.Input.asOptionalInput<bool>(standby);

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
      allocationId: map['allocationId'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      standby: map['standby'] == null ? null : map['standby'] as bool,
    );
  }
}

