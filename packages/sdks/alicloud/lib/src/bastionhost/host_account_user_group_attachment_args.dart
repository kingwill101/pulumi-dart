// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_account_user_group_attachment_host_account_user_group_attachment_args_doc}
/// The set of arguments for HostAccountUserGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_account_user_group_attachment_host_account_user_group_attachment_args_doc}
class HostAccountUserGroupAttachmentArgs {
  /// A list IDs of the host account.
  final pulumi.Input<List<String>> hostAccountIds;
  /// The ID of the host.
  final pulumi.Input<String> hostId;
  /// The ID of the Bastionhost instance where you want to authorize the user group to manage the specified hosts and host accounts.
  final pulumi.Input<String> instanceId;
  /// The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String> userGroupId;

  /// Creates a new [HostAccountUserGroupAttachmentArgs].
  /// [hostAccountIds] A list IDs of the host account.
  /// [hostId] The ID of the host.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user group to manage the specified hosts and host accounts.
  /// [userGroupId] The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  HostAccountUserGroupAttachmentArgs({
    required pulumi.Output<List<String>> hostAccountIds,
    required pulumi.Output<String> hostId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> userGroupId,
  }) :
      hostAccountIds = pulumi.Input.asInput<List<String>>(hostAccountIds),
      hostId = pulumi.Input.asInput<String>(hostId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      userGroupId = pulumi.Input.asInput<String>(userGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountIds': hostAccountIds,
      'hostId': hostId,
      'instanceId': instanceId,
      'userGroupId': userGroupId,
    };
  }

  factory HostAccountUserGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAccountUserGroupAttachmentArgs(
      hostAccountIds: pulumi.Output.create<List<String>>((map['hostAccountIds'] as List).cast<String>()),
      hostId: pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: pulumi.Output.create<String>(map['userGroupId'] as String),
    );
  }
}

