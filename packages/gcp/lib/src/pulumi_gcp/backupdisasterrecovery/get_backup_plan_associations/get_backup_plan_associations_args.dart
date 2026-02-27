// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupPlanAssociations.
class GetBackupPlanAssociationsArgs {
  /// The location where the Backup Plan Association resources reside.
  final pulumi.Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type of the workload. For example, sqladmin.googleapis.com/Instance or compute.googleapis.com/Instance. `resource_type` is deprecated and will be removed in a future major release.
  /// - - -
  final pulumi.Input<String>? resourceType;

  GetBackupPlanAssociationsArgs({
    required this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory GetBackupPlanAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationsArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceType: pulumi.Input.asOptionalInput<String>(map['resourceType']),
    );
  }
}
