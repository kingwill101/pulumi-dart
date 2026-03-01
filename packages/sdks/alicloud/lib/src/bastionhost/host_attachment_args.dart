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
    required pulumi.Output<String> hostGroupId,
    required pulumi.Output<String> hostId,
    required pulumi.Output<String> instanceId,
  }) :
      hostGroupId = pulumi.Input.asInput<String>(hostGroupId),
      hostId = pulumi.Input.asInput<String>(hostId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostGroupId': hostGroupId,
      'hostId': hostId,
      'instanceId': instanceId,
    };
  }

  factory HostAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAttachmentArgs(
      hostGroupId: pulumi.Output.create<String>(map['hostGroupId'] as String),
      hostId: pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

