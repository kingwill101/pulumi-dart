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
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? userId,
  }) :
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': ?directoryId,
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory UserAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserAttachmentState(
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

