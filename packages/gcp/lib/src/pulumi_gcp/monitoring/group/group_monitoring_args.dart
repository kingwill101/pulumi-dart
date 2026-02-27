// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Group.
class GroupMonitoringArgs {
  /// A user-assigned name for this group, used only for display
  /// purposes.
  final pulumi.Input<String> displayName;

  /// The filter used to determine which monitored resources
  /// belong to this group.
  final pulumi.Input<String> filter;

  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  final pulumi.Input<bool>? isCluster;

  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  final pulumi.Input<String>? parentName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GroupMonitoringArgs({
    required this.displayName,
    required this.filter,
    this.isCluster,
    this.parentName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['filter'] = filter;
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

  factory GroupMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return GroupMonitoringArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      isCluster: pulumi.Input.asOptionalInput<bool>(map['isCluster']),
      parentName: pulumi.Input.asOptionalInput<String>(map['parentName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
