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
    pulumi.Output<String>? comment,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? userGroupId,
    pulumi.Output<String>? userGroupName,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId),
      userGroupName = pulumi.Input.asOptionalInput<String>(userGroupName);

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
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
      userGroupName: map['userGroupName'] == null ? null : pulumi.Output.create<String>(map['userGroupName'] as String),
    );
  }
}

