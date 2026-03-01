// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_group_account_user_group_attachment_host_group_account_user_group_attachment_args_doc}
/// The set of arguments for HostGroupAccountUserGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_group_account_user_group_attachment_host_group_account_user_group_attachment_args_doc}
class HostGroupAccountUserGroupAttachmentArgs {
  /// A list names of the host account.
  final pulumi.Input<List<String>> hostAccountNames;
  /// The ID of the host group.
  final pulumi.Input<String> hostGroupId;
  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String> instanceId;
  /// The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String> userGroupId;

  /// Creates a new [HostGroupAccountUserGroupAttachmentArgs].
  /// [hostAccountNames] A list names of the host account.
  /// [hostGroupId] The ID of the host group.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userGroupId] The ID of the user group that you want to authorize to manage the specified hosts and host accounts.
  HostGroupAccountUserGroupAttachmentArgs({
    required pulumi.Output<List<String>> hostAccountNames,
    required pulumi.Output<String> hostGroupId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> userGroupId,
  }) :
      hostAccountNames = pulumi.Input.asInput<List<String>>(hostAccountNames),
      hostGroupId = pulumi.Input.asInput<String>(hostGroupId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      userGroupId = pulumi.Input.asInput<String>(userGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountNames': hostAccountNames,
      'hostGroupId': hostGroupId,
      'instanceId': instanceId,
      'userGroupId': userGroupId,
    };
  }

  factory HostGroupAccountUserGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupAccountUserGroupAttachmentArgs(
      hostAccountNames: pulumi.Output.create<List<String>>((map['hostAccountNames'] as List).cast<String>()),
      hostGroupId: pulumi.Output.create<String>(map['hostGroupId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: pulumi.Output.create<String>(map['userGroupId'] as String),
    );
  }
}

