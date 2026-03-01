// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_user_attachment_user_attachment_args_doc}
/// The set of arguments for UserAttachment.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_user_attachment_user_attachment_args_doc}
class UserAttachmentArgs {
  /// Specifies the user group to add the user's bastion host ID of.
  final pulumi.Input<String> instanceId;
  /// Specifies the user group to which you want to add the user ID.
  final pulumi.Input<String> userGroupId;
  /// Specify that you want to add to the policy attached to the user group ID. This includes response parameters in a Json-formatted string supports up to set up 100 USER ID.
  final pulumi.Input<String> userId;

  /// Creates a new [UserAttachmentArgs].
  /// [instanceId] Specifies the user group to add the user's bastion host ID of.
  /// [userGroupId] Specifies the user group to which you want to add the user ID.
  /// [userId] Specify that you want to add to the policy attached to the user group ID. This includes response parameters in a Json-formatted string supports up to set up 100 USER ID.
  UserAttachmentArgs({
    required String instanceId,
    required String userGroupId,
    required String userId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      userGroupId = pulumi.Input.asInput<String>(userGroupId),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'userGroupId': userGroupId,
      'userId': userId,
    };
  }

  factory UserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserAttachmentArgs(
      instanceId: map['instanceId'] as String,
      userGroupId: map['userGroupId'] as String,
      userId: map['userId'] as String,
    );
  }
}

