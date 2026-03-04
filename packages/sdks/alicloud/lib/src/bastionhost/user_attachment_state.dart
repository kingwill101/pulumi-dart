// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAttachment resources.
class UserAttachmentState {
  /// Specifies the user group to add the user's bastion host ID of.
  final pulumi.Input<String>? instanceId;

  /// Specifies the user group to which you want to add the user ID.
  final pulumi.Input<String>? userGroupId;

  /// Specify that you want to add to the policy attached to the user group ID. This includes response parameters in a Json-formatted string supports up to set up 100 USER ID.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserAttachmentState].
  /// [instanceId] Specifies the user group to add the user's bastion host ID of.
  /// [userGroupId] Specifies the user group to which you want to add the user ID.
  /// [userId] Specify that you want to add to the policy attached to the user group ID. This includes response parameters in a Json-formatted string supports up to set up 100 USER ID.
  UserAttachmentState({this.instanceId, this.userGroupId, this.userId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'userGroupId': ?userGroupId,
      'userId': ?userId,
    };
  }

  factory UserAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserAttachmentState(
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userGroupId: (() {
        final guardedValue = map['userGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
