// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_account_user_attachment_host_account_user_attachment_args_doc}
/// The set of arguments for HostAccountUserAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_account_user_attachment_host_account_user_attachment_args_doc}
class HostAccountUserAttachmentArgs {
  /// A list IDs of the host account.
  final pulumi.Input<List<String>> hostAccountIds;
  /// The ID of the host.
  final pulumi.Input<String> hostId;
  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String> instanceId;
  /// The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String> userId;

  /// Creates a new [HostAccountUserAttachmentArgs].
  /// [hostAccountIds] A list IDs of the host account.
  /// [hostId] The ID of the host.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userId] The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  HostAccountUserAttachmentArgs({
    required pulumi.Output<List<String>> hostAccountIds,
    required pulumi.Output<String> hostId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> userId,
  }) :
      hostAccountIds = pulumi.Input.asInput<List<String>>(hostAccountIds),
      hostId = pulumi.Input.asInput<String>(hostId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountIds': hostAccountIds,
      'hostId': hostId,
      'instanceId': instanceId,
      'userId': userId,
    };
  }

  factory HostAccountUserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return HostAccountUserAttachmentArgs(
      hostAccountIds: pulumi.Output.create<List<String>>((map['hostAccountIds'] as List).cast<String>()),
      hostId: pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

