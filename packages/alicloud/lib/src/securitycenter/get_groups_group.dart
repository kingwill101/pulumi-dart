// ignore_for_file: unused_element, unnecessary_cast


class GetGroupsGroup {
  /// GroupFlag, '0' mean default group(created by system), '1' means customer defined group.
  final int groupFlag;
  /// The ID of Group.
  final String groupId;
  /// The name of Group.
  final String groupName;
  /// The ID of the Group(same as the group_id).
  final String id;

  /// Creates a new [GetGroupsGroup].
  /// [groupFlag] GroupFlag, '0' mean default group(created by system), '1' means customer defined group.
  /// [groupId] The ID of Group.
  /// [groupName] The name of Group.
  /// [id] The ID of the Group(same as the group_id).
  GetGroupsGroup({
    required this.groupFlag,
    required this.groupId,
    required this.groupName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupFlag': groupFlag,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      groupFlag: map['groupFlag'] as int,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
    );
  }
}

