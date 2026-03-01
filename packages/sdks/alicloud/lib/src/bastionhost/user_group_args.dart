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
  UserGroupArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> userGroupName,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      userGroupName = pulumi.Input.asInput<String>(userGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'instanceId': instanceId,
      'userGroupName': userGroupName,
    };
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupName: pulumi.Output.create<String>(map['userGroupName'] as String),
    );
  }
}

