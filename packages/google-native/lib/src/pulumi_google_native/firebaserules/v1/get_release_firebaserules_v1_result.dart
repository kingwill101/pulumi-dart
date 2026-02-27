// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRelease.
class GetReleaseFirebaserulesV1Result {
  /// Time the release was created.
  final String createTime;

  /// Format: `projects/{project_id}/releases/{release_id}`
  final String name;

  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  final String rulesetName;

  /// Time the release was updated.
  final String updateTime;

  GetReleaseFirebaserulesV1Result({
    required this.createTime,
    required this.name,
    required this.rulesetName,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['name'] = name;
    map['rulesetName'] = rulesetName;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetReleaseFirebaserulesV1Result.fromMap(Map<String, dynamic> map) {
    return GetReleaseFirebaserulesV1Result(
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      rulesetName: map['rulesetName'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
