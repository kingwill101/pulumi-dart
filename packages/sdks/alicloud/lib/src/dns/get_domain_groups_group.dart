// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainGroupsGroup {
  final pulumi.Input<String> groupId;
  final pulumi.Input<String> groupName;

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
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
    );
  }
}

