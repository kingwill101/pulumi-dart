// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainGroupsGroup {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> groupName;

  /// Creates a new [GetDomainGroupsGroup].
  /// [groupId] Required.
  /// [groupName] Required.
  const GetDomainGroupsGroup({
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
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

