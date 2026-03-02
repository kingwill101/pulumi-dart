// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupsGroup {
  /// GroupFlag, '0' mean default group(created by system), '1' means customer defined group.
  final pulumi.Input<int> groupFlag;
  /// The ID of Group.
  final pulumi.Input<String> groupId;
  /// The name of Group.
  final pulumi.Input<String> groupName;
  /// The ID of the Group(same as the group_id).
  final pulumi.Input<String> id;

  /// Creates a new [GetGroupsGroup].
  /// [groupFlag] GroupFlag, '0' mean default group(created by system), '1' means customer defined group.
  /// [groupId] The ID of Group.
  /// [groupName] The name of Group.
  /// [id] The ID of the Group(same as the group_id).
  GetGroupsGroup({
    required this.groupFlag,
    required this.groupId,
    required this.groupName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupFlag': groupFlag,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      groupFlag: (map['groupFlag'] as int).input(),
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

