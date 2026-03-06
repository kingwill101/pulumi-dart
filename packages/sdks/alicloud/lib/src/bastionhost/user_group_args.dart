// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_user_group_user_group_args_doc}
/// The set of arguments for UserGroup.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_user_group_user_group_args_doc}
class UserGroupArgs {
  /// Specify the New Group of Remark Information. Supports up to 500 Characters.
  final pulumi.Input<String>? comment;
  /// Specify the New Group of the Bastion Host of Instance Id.
  final pulumi.Input<String> instanceId;
  /// Specify the New Group Name. Supports up to 128 Characters.
  final pulumi.Input<String> userGroupName;

  /// Creates a new [UserGroupArgs].
  /// [comment] Specify the New Group of Remark Information. Supports up to 500 Characters.
  /// [instanceId] Specify the New Group of the Bastion Host of Instance Id.
  /// [userGroupName] Specify the New Group Name. Supports up to 128 Characters.
  const UserGroupArgs({
    this.comment,
    required this.instanceId,
    required this.userGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'instanceId': instanceId,
      'userGroupName': userGroupName,
    };
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      userGroupName: pulumi.Input.fromValue(map['userGroupName'] as String),
    );
  }
}

