// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostAttachment resources.
class HostAttachmentState {
  /// Specifies the added to the host group ID.
  final pulumi.Input<String>? hostGroupId;
  /// Specified to be part of a host group of host ID.
  final pulumi.Input<String>? hostId;
  /// The bastion host instance id.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [HostAttachmentState].
  /// [hostGroupId] Specifies the added to the host group ID.
  /// [hostId] Specified to be part of a host group of host ID.
  /// [instanceId] The bastion host instance id.
  HostAttachmentState({
    pulumi.Output<String>? hostGroupId,
    pulumi.Output<String>? hostId,
    pulumi.Output<String>? instanceId,
  }) :
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      hostId = pulumi.Input.asOptionalInput<String>(hostId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostGroupId': ?hostGroupId,
      'hostId': ?hostId,
      'instanceId': ?instanceId,
    };
  }

  factory HostAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAttachmentState(
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      hostId: map['hostId'] == null ? null : pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

