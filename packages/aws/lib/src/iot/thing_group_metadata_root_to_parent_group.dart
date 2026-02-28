// ignore_for_file: unused_element, unnecessary_cast

class ThingGroupMetadataRootToParentGroup {
  final String? groupArn;
  final String? groupName;

  /// Creates a new [ThingGroupMetadataRootToParentGroup].
  /// [groupArn] Optional.
  /// [groupName] Optional.
  ThingGroupMetadataRootToParentGroup({
    this.groupArn,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupArnValue = groupArn;
    if (groupArnValue != null) {
      map['groupArn'] = groupArnValue;
    }
    final groupNameValue = groupName;
    if (groupNameValue != null) {
      map['groupName'] = groupNameValue;
    }
    return map;
  }

  factory ThingGroupMetadataRootToParentGroup.fromMap(
      Map<String, dynamic> map) {
    return ThingGroupMetadataRootToParentGroup(
      groupArn: map['groupArn'] == null ? null : map['groupArn'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
    );
  }
}
