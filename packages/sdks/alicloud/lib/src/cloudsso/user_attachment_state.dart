// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAttachment resources.
class UserAttachmentState {
  /// The ID of the directory.
  final pulumi.Input<String>? directoryId;
  /// The ID of the group.
  final pulumi.Input<String>? groupId;
  /// The ID of the user.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserAttachmentState].
  /// [directoryId] The ID of the directory.
  /// [groupId] The ID of the group.
  /// [userId] The ID of the user.
  UserAttachmentState({
    this.directoryId,
    this.groupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory UserAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserAttachmentState(
      directoryId: map['directoryId'] == null ? null : (map['directoryId']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

