// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_backup_alloydb_v1alpha_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_backup_alloydb_v1alpha_args_doc}
class GetBackupAlloydbV1alphaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupAlloydbV1alphaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBackupAlloydbV1alphaArgs({
    required String backupId,
    required String location,
    String? project,
  })  : backupId = pulumi.Input.asInput<String>(backupId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1alphaArgs(
      backupId: map['backupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
