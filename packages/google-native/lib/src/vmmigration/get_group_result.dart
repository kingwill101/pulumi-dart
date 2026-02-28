// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupResult {
  /// The create time timestamp.
  final String createTime;

  /// User-provided description of the group.
  final String description;

  /// Display name is a user defined name for this group which can be updated.
  final String displayName;

  /// Immutable. The target type of this group.
  final String migrationTargetType;

  /// The Group name.
  final String name;

  /// The update time timestamp.
  final String updateTime;

  /// Creates a new [GetGroupResult].
  /// [createTime] The create time timestamp.
  /// [description] User-provided description of the group.
  /// [displayName] Display name is a user defined name for this group which can be updated.
  /// [migrationTargetType] Immutable. The target type of this group.
  /// [name] The Group name.
  /// [updateTime] The update time timestamp.
  GetGroupResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.migrationTargetType,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['migrationTargetType'] = migrationTargetType;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      migrationTargetType: map['migrationTargetType'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
