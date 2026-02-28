// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_plan_associations_get_backup_plan_associations_args_doc}
/// Arguments for getBackupPlanAssociations.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_plan_associations_get_backup_plan_associations_args_doc}
class GetBackupPlanAssociationsArgs {
  /// The location where the Backup Plan Association resources reside.
  final pulumi.Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type of the workload. For example, sqladmin.googleapis.com/Instance or compute.googleapis.com/Instance. `resource_type` is deprecated and will be removed in a future major release.
  /// - - -
  final pulumi.Input<String>? resourceType;

  /// Creates a new [GetBackupPlanAssociationsArgs].
  /// [location] The location where the Backup Plan Association resources reside.
  /// [project] The project in which the resource belongs. If it
  /// [resourceType] The resource type of the workload. For example, sqladmin.googleapis.com/Instance or compute.googleapis.com/Instance. `resource_type` is deprecated and will be removed in a future major release.
  GetBackupPlanAssociationsArgs({
    required String location,
    String? project,
    String? resourceType,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
