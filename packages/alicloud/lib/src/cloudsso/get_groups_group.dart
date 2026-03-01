// ignore_for_file: unused_element, unnecessary_cast


class GetGroupsGroup {
  /// The Created Time of the Directory.
  final String createTime;
  /// The Description of the Directory.
  final String description;
  /// The ID of the Directory.
  final String directoryId;
  /// The Group ID of the group.
  final String groupId;
  /// The Name of the group.
  final String groupName;
  /// The ID of the Group.
  final String id;
  /// The Provision Type of the Group. Valid values: `Manual`, `Synchronized`.
  final String provisionType;

  /// Creates a new [GetGroupsGroup].
  /// [createTime] The Created Time of the Directory.
  /// [description] The Description of the Directory.
  /// [directoryId] The ID of the Directory.
  /// [groupId] The Group ID of the group.
  /// [groupName] The Name of the group.
  /// [id] The ID of the Group.
  /// [provisionType] The Provision Type of the Group. Valid values: `Manual`, `Synchronized`.
  GetGroupsGroup({
    required this.createTime,
    required this.description,
    required this.directoryId,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.provisionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'directoryId': directoryId,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'provisionType': provisionType,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      directoryId: map['directoryId'] as String,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
      provisionType: map['provisionType'] as String,
    );
  }
}

