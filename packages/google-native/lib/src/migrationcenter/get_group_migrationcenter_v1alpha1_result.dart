// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupMigrationcenterV1alpha1Result {
  /// The timestamp when the group was created.
  final String createTime;

  /// Optional. The description of the group.
  final String description;

  /// Optional. User-friendly display name.
  final String displayName;

  /// Labels as key value pairs.
  final Map<String, String> labels;

  /// The name of the group.
  final String name;

  /// The timestamp when the group was last updated.
  final String updateTime;

  /// Creates a new [GetGroupMigrationcenterV1alpha1Result].
  /// [createTime] The timestamp when the group was created.
  /// [description] Optional. The description of the group.
  /// [displayName] Optional. User-friendly display name.
  /// [labels] Labels as key value pairs.
  /// [name] The name of the group.
  /// [updateTime] The timestamp when the group was last updated.
  GetGroupMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGroupMigrationcenterV1alpha1Result.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
