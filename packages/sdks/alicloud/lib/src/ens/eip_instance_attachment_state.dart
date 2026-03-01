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
    pulumi.Output<String>? allocationId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<bool>? standby,
    pulumi.Output<String>? status,
  }) :
      allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      standby = pulumi.Input.asOptionalInput<bool>(standby),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      allocationId: map['allocationId'] == null ? null : pulumi.Output.create<String>(map['allocationId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      standby: map['standby'] == null ? null : pulumi.Output.create<bool>(map['standby'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

