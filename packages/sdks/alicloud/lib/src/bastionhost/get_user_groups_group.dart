// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupsGroup {
  /// Specify the New Group of Remark Information. Supports up to 500 Characters.
  final pulumi.Input<String> comment;
  /// The ID of the User Group.
  final pulumi.Input<String> id;
  /// Specify the New Group of the Bastion Host of Instance Id.
  final pulumi.Input<String> instanceId;
  /// The User Group ID.
  final pulumi.Input<String> userGroupId;
  /// Specify the New Group Name. Supports up to 128 Characters.
  final pulumi.Input<String> userGroupName;

  /// Creates a new [GetUserGroupsGroup].
  /// [comment] Specify the New Group of Remark Information. Supports up to 500 Characters.
  /// [id] The ID of the User Group.
  /// [instanceId] Specify the New Group of the Bastion Host of Instance Id.
  /// [userGroupId] The User Group ID.
  /// [userGroupName] Specify the New Group Name. Supports up to 128 Characters.
  const GetUserGroupsGroup({
    required this.comment,
    required this.id,
    required this.instanceId,
    required this.userGroupId,
    required this.userGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'id': id,
      'instanceId': instanceId,
      'userGroupId': userGroupId,
      'userGroupName': userGroupName,
    };
  }

  factory GetUserGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsGroup(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      userGroupId: pulumi.Input.fromValue(map['userGroupId'] as String),
      userGroupName: pulumi.Input.fromValue(map['userGroupName'] as String),
    );
  }
}

