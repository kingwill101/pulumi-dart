// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_group_account_user_attachment_host_group_account_user_attachment_args_doc}
/// The set of arguments for HostGroupAccountUserAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_group_account_user_attachment_host_group_account_user_attachment_args_doc}
class HostGroupAccountUserAttachmentArgs {
  /// A list names of the host account.
  final pulumi.Input<List<String>> hostAccountNames;

  /// The ID of the host group.
  final pulumi.Input<String> hostGroupId;

  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String> instanceId;

  /// The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String> userId;

  /// Creates a new [HostGroupAccountUserAttachmentArgs].
  /// [hostAccountNames] A list names of the host account.
  /// [hostGroupId] The ID of the host group.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userId] The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  HostGroupAccountUserAttachmentArgs({
    required this.hostAccountNames,
    required this.hostGroupId,
    required this.instanceId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountNames': hostAccountNames,
      'hostGroupId': hostGroupId,
      'instanceId': instanceId,
      'userId': userId,
    };
  }

  factory HostGroupAccountUserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupAccountUserAttachmentArgs(
      hostAccountNames: pulumi.Input.fromValue(
        (map['hostAccountNames'] as List).cast<String>(),
      ),
      hostGroupId: pulumi.Input.fromValue(map['hostGroupId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
