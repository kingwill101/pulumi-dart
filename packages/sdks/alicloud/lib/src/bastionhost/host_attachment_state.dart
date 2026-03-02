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
    this.hostGroupId,
    this.hostId,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostGroupId': ?hostGroupId,
      'hostId': ?hostId,
      'instanceId': ?instanceId,
    };
  }

  factory HostAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAttachmentState(
      hostGroupId: map['hostGroupId'] == null ? null : (map['hostGroupId'] as String).input(),
      hostId: map['hostId'] == null ? null : (map['hostId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
    );
  }
}

