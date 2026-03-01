// ignore_for_file: unused_element, unnecessary_cast


class GetUserGroupsGroup {
  /// Specify the New Group of Remark Information. Supports up to 500 Characters.
  final String comment;
  /// The ID of the User Group.
  final String id;
  /// Specify the New Group of the Bastion Host of Instance Id.
  final String instanceId;
  /// The User Group ID.
  final String userGroupId;
  /// Specify the New Group Name. Supports up to 128 Characters.
  final String userGroupName;

  /// Creates a new [GetUserGroupsGroup].
  /// [comment] Specify the New Group of Remark Information. Supports up to 500 Characters.
  /// [id] The ID of the User Group.
  /// [instanceId] Specify the New Group of the Bastion Host of Instance Id.
  /// [userGroupId] The User Group ID.
  /// [userGroupName] Specify the New Group Name. Supports up to 128 Characters.
  GetUserGroupsGroup({
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
      comment: map['comment'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      userGroupId: map['userGroupId'] as String,
      userGroupName: map['userGroupName'] as String,
    );
  }
}

