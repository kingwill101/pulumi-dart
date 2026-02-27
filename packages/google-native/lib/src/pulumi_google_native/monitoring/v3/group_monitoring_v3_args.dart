// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupMonitoringV3Args {
  /// A user-assigned name for this group, used only for display purposes.
  final pulumi.Input<String>? displayName;

  /// The filter used to determine which monitored resources belong to this group.
  final pulumi.Input<String>? filter;

  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  final pulumi.Input<bool>? isCluster;

  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  final pulumi.Input<String>? parentName;
  final pulumi.Input<String>? project;

  GroupMonitoringV3Args({
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

  factory GroupMonitoringV3Args.fromMap(Map<String, dynamic> map) {
    return GroupMonitoringV3Args(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      isCluster: pulumi.Input.asOptionalInput<bool>(map['isCluster']),
      parentName: pulumi.Input.asOptionalInput<String>(map['parentName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
