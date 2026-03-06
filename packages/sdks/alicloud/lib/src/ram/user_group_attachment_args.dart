// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_user_group_attachment_user_group_attachment_args_doc}
/// The set of arguments for UserGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_ram_user_group_attachment_user_group_attachment_args_doc}
class UserGroupAttachmentArgs {
  /// The name of group.
  final pulumi.Input<String> groupName;
  /// The name of user.
  final pulumi.Input<String> userName;

  /// Creates a new [UserGroupAttachmentArgs].
  /// [groupName] The name of group.
  /// [userName] The name of user.
  const UserGroupAttachmentArgs({
    required this.groupName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'userName': userName,
    };
  }

  factory UserGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupAttachmentArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

