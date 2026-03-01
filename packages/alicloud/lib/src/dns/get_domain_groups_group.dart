// ignore_for_file: unused_element, unnecessary_cast


class GetDomainGroupsGroup {
  final String groupId;
  final String groupName;

  /// Creates a new [GetDomainGroupsGroup].
  /// [groupId] Required.
  /// [groupName] Required.
  GetDomainGroupsGroup({
    required this.groupId,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'groupName': groupName,
    };
  }

  factory GetDomainGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDomainGroupsGroup(
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
    );
  }
}

