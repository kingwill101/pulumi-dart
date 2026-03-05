// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_user_attachment_user_attachment_args_doc}
/// The set of arguments for UserAttachment.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_user_attachment_user_attachment_args_doc}
class UserAttachmentArgs {
  /// The ID of the directory.
  final pulumi.Input<String> directoryId;
  /// The ID of the group.
  final pulumi.Input<String> groupId;
  /// The ID of the user.
  final pulumi.Input<String> userId;

  /// Creates a new [UserAttachmentArgs].
  /// [directoryId] The ID of the directory.
  /// [groupId] The ID of the group.
  /// [userId] The ID of the user.
  UserAttachmentArgs({
    required this.directoryId,
    required this.groupId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'groupId': groupId,
      'userId': userId,
    };
  }

  factory UserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserAttachmentArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

