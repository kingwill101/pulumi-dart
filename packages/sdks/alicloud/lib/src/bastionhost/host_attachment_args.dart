// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_attachment_host_attachment_args_doc}
/// The set of arguments for HostAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_attachment_host_attachment_args_doc}
class HostAttachmentArgs {
  /// Specifies the added to the host group ID.
  final pulumi.Input<String> hostGroupId;
  /// Specified to be part of a host group of host ID.
  final pulumi.Input<String> hostId;
  /// The bastion host instance id.
  final pulumi.Input<String> instanceId;

  /// Creates a new [HostAttachmentArgs].
  /// [hostGroupId] Specifies the added to the host group ID.
  /// [hostId] Specified to be part of a host group of host ID.
  /// [instanceId] The bastion host instance id.
  HostAttachmentArgs({
    required this.hostGroupId,
    required this.hostId,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostGroupId': hostGroupId,
      'hostId': hostId,
      'instanceId': instanceId,
    };
  }

  factory HostAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAttachmentArgs(
      hostGroupId: pulumi.Input.fromValue(map['hostGroupId'] as String),
      hostId: pulumi.Input.fromValue(map['hostId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

