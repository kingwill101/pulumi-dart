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
  UserGroupAttachmentState({
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? userName,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'userName': ?userName,
    };
  }

  factory UserGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserGroupAttachmentState(
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

