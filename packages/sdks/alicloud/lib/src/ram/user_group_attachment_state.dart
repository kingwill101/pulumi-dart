// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroupAttachment resources.
class UserGroupAttachmentState {
  /// The name of group.
  final pulumi.Input<String>? groupName;
  /// The name of user.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserGroupAttachmentState].
  /// [groupName] The name of group.
  /// [userName] The name of user.
  const UserGroupAttachmentState({
    this.groupName,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'userName': ?userName,
    };
  }

  factory UserGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserGroupAttachmentState(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

