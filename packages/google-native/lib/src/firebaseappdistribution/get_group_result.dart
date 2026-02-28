// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGroup.
class GetGroupResult {
  /// The display name of the group.
  final String displayName;

  /// The number of invite links for this group.
  final int inviteLinkCount;

  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  final String name;

  /// The number of releases this group is permitted to access.
  final int releaseCount;

  /// The number of testers who are members of this group.
  final int testerCount;

  /// Creates a new [GetGroupResult].
  /// [displayName] The display name of the group.
  /// [inviteLinkCount] The number of invite links for this group.
  /// [name] The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  /// [releaseCount] The number of releases this group is permitted to access.
  /// [testerCount] The number of testers who are members of this group.
  GetGroupResult({
    required this.displayName,
    required this.inviteLinkCount,
    required this.name,
    required this.releaseCount,
    required this.testerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['inviteLinkCount'] = inviteLinkCount;
    map['name'] = name;
    map['releaseCount'] = releaseCount;
    map['testerCount'] = testerCount;
    return map;
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      displayName: map['displayName'] as String,
      inviteLinkCount: map['inviteLinkCount'] as int,
      name: map['name'] as String,
      releaseCount: map['releaseCount'] as int,
      testerCount: map['testerCount'] as int,
    );
  }
}
