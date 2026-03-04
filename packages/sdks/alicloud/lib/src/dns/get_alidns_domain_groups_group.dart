// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlidnsDomainGroupsGroup {
  /// Number of domain names in the group.
  final pulumi.Input<int> domainCount;

  /// Id of the domain group.
  final pulumi.Input<String> groupId;

  /// The name of the domain group.
  final pulumi.Input<String> groupName;

  /// Id of the instance.
  final pulumi.Input<String> id;

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
      domainCount: pulumi.Input.fromValue(map['domainCount'] as int),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
