// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroup resources.
class UserGroupState {
  /// Specify the New Group of Remark Information. Supports up to 500 Characters.
  final pulumi.Input<String>? comment;
  /// Specify the New Group of the Bastion Host of Instance Id.
  final pulumi.Input<String>? instanceId;
  /// The User Group self ID.
  final pulumi.Input<String>? userGroupId;
  /// Specify the New Group Name. Supports up to 128 Characters.
  final pulumi.Input<String>? userGroupName;

  /// Creates a new [UserGroupState].
  /// [comment] Specify the New Group of Remark Information. Supports up to 500 Characters.
  /// [instanceId] Specify the New Group of the Bastion Host of Instance Id.
  /// [userGroupId] The User Group self ID.
  /// [userGroupName] Specify the New Group Name. Supports up to 128 Characters.
  UserGroupState({
    this.comment,
    this.instanceId,
    this.userGroupId,
    this.userGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'instanceId': ?instanceId,
      'userGroupId': ?userGroupId,
      'userGroupName': ?userGroupName,
    };
  }

  factory UserGroupState.fromMap(Map<String, dynamic> map) {
    return UserGroupState(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupName: (() { final guardedValue = map['userGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

