// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BackupPlanAssociation.
class BackupPlanAssociationArgs {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  final Input<String> backupPlan;

  /// The id of backupplan association
  final Input<String> backupPlanAssociationId;

  /// The location for the backupplan association
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The resource for which BPA needs to be created
  final Input<String> resource;

  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  final Input<String> resourceType;

  BackupPlanAssociationArgs({
    required this.backupPlan,
    required this.backupPlanAssociationId,
    required this.location,
    this.project,
    required this.resource,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlan'] = backupPlan;
    map['backupPlanAssociationId'] = backupPlanAssociationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resource'] = resource;
    map['resourceType'] = resourceType;
    return map;
  }

  factory BackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanAssociationArgs(
      backupPlan: Input.asInput<String>(map['backupPlan']),
      backupPlanAssociationId:
          Input.asInput<String>(map['backupPlanAssociationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      resource: Input.asInput<String>(map['resource']),
      resourceType: Input.asInput<String>(map['resourceType']),
    );
  }
}
