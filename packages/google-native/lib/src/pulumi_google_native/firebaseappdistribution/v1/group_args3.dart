// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Group.
class GroupArgs3 {
  /// The display name of the group.
  final Input<String> displayName;

  /// Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  final Input<String>? groupId;

  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  final Input<String>? name;
  final Input<String>? project;

  GroupArgs3({
    required this.displayName,
    this.groupId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GroupArgs3.fromMap(Map<String, dynamic> map) {
    return GroupArgs3(
      displayName: Input.asInput<String>(map['displayName']),
      groupId: Input.asOptionalInput<String>(map['groupId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
