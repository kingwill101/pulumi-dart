// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupFirebaseappdistributionV1Args {
  /// The display name of the group.
  final pulumi.Input<String> displayName;

  /// Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  final pulumi.Input<String>? groupId;

  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  GroupFirebaseappdistributionV1Args({
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

  factory GroupFirebaseappdistributionV1Args.fromMap(Map<String, dynamic> map) {
    return GroupFirebaseappdistributionV1Args(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      groupId: pulumi.Input.asOptionalInput<String>(map['groupId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
