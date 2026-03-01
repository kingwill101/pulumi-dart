// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_account_share_key_attachment_host_account_share_key_attachment_args_doc}
/// The set of arguments for HostAccountShareKeyAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_account_share_key_attachment_host_account_share_key_attachment_args_doc}
class HostAccountShareKeyAttachmentArgs {
  /// The ID list of the host account.
  final pulumi.Input<String> hostAccountId;
  /// The ID of the host shared key.
  final pulumi.Input<String> hostShareKeyId;
  /// The ID of the Bastion machine instance.
  final pulumi.Input<String> instanceId;

  /// Creates a new [HostAccountShareKeyAttachmentArgs].
  /// [hostAccountId] The ID list of the host account.
  /// [hostShareKeyId] The ID of the host shared key.
  /// [instanceId] The ID of the Bastion machine instance.
  HostAccountShareKeyAttachmentArgs({
    required pulumi.Output<String> hostAccountId,
    required pulumi.Output<String> hostShareKeyId,
    required pulumi.Output<String> instanceId,
  }) :
      hostAccountId = pulumi.Input.asInput<String>(hostAccountId),
      hostShareKeyId = pulumi.Input.asInput<String>(hostShareKeyId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountId': hostAccountId,
      'hostShareKeyId': hostShareKeyId,
      'instanceId': instanceId,
    };
  }

  factory HostAccountShareKeyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAccountShareKeyAttachmentArgs(
      hostAccountId: pulumi.Output.create<String>(map['hostAccountId'] as String),
      hostShareKeyId: pulumi.Output.create<String>(map['hostShareKeyId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

