// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Group.
class GroupArgs6 {
  /// A user-assigned name for this group, used only for display purposes.
  final Input<String>? displayName;

  /// The filter used to determine which monitored resources belong to this group.
  final Input<String>? filter;

  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  final Input<bool>? isCluster;

  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  final Input<String>? parentName;
  final Input<String>? project;

  GroupArgs6({
    this.displayName,
    this.filter,
    this.isCluster,
    this.parentName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final isClusterValue = isCluster;
    if (isClusterValue != null) {
      map['isCluster'] = isClusterValue;
    }
    final parentNameValue = parentName;
    if (parentNameValue != null) {
      map['parentName'] = parentNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GroupArgs6.fromMap(Map<String, dynamic> map) {
    return GroupArgs6(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      filter: Input.asOptionalInput<String>(map['filter']),
      isCluster: Input.asOptionalInput<bool>(map['isCluster']),
      parentName: Input.asOptionalInput<String>(map['parentName']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
