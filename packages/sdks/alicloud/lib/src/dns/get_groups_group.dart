// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// Id of the group.
  final pulumi.Input<String> groupId;
  /// Name of the group.
  final pulumi.Input<String> groupName;

  /// Creates a new [GetGroupsGroup].
  /// [groupId] Id of the group.
  /// [groupName] Name of the group.
  GetGroupsGroup({
    required this.groupId,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'groupName': groupName,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

