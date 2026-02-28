// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_plan_association_get_backup_plan_association_args_doc}
/// Arguments for getBackupPlanAssociation.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_plan_association_get_backup_plan_association_args_doc}
class GetBackupPlanAssociationArgs {
  /// The id of Backupplan association resource.
  ///
  /// - - -
  final pulumi.Input<String> backupPlanAssociationId;

  /// The location in which the Backupplan association resource belongs.
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupPlanAssociationArgs].
  /// [backupPlanAssociationId] The id of Backupplan association resource.
  /// [location] The location in which the Backupplan association resource belongs.
  /// [project] Optional.
  GetBackupPlanAssociationArgs({
    required String backupPlanAssociationId,
    required String location,
    String? project,
  })  : backupPlanAssociationId =
            pulumi.Input.asInput<String>(backupPlanAssociationId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlanAssociationId'] = backupPlanAssociationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupPlanAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanAssociationArgs(
      backupPlanAssociationId: map['backupPlanAssociationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
