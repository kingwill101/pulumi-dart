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
  UserAttachmentState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? userGroupId,
    pulumi.Output<String>? userId,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'userGroupId': ?userGroupId,
      'userId': ?userId,
    };
  }

  factory UserAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserAttachmentState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

