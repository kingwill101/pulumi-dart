// ignore_for_file: unused_element, unnecessary_cast


class GetAlidnsDomainGroupsGroup {
  /// Number of domain names in the group.
  final int domainCount;
  /// Id of the domain group.
  final String groupId;
  /// The name of the domain group.
  final String groupName;
  /// Id of the instance.
  final String id;

  /// Creates a new [GetAlidnsDomainGroupsGroup].
  /// [domainCount] Number of domain names in the group.
  /// [groupId] Id of the domain group.
  /// [groupName] The name of the domain group.
  /// [id] Id of the instance.
  GetAlidnsDomainGroupsGroup({
    required this.domainCount,
    required this.groupId,
    required this.groupName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainCount': domainCount,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
    };
  }

  factory GetAlidnsDomainGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainGroupsGroup(
      domainCount: map['domainCount'] as int,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      id: map['id'] as String,
    );
  }
}

