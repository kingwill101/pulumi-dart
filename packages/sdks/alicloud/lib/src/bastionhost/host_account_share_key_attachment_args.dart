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
    required this.hostAccountId,
    required this.hostShareKeyId,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountId': hostAccountId,
      'hostShareKeyId': hostShareKeyId,
      'instanceId': instanceId,
    };
  }

  factory HostAccountShareKeyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAccountShareKeyAttachmentArgs(
      hostAccountId: (map['hostAccountId'] as String).input(),
      hostShareKeyId: (map['hostShareKeyId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

