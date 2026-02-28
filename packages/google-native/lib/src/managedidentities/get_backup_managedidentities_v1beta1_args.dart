// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_backup_managedidentities_v1beta1_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_backup_managedidentities_v1beta1_args_doc}
class GetBackupManagedidentitiesV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupManagedidentitiesV1beta1Args].
  /// [backupId] Required.
  /// [domainId] Required.
  /// [project] Optional.
  GetBackupManagedidentitiesV1beta1Args({
    required String backupId,
    required String domainId,
    String? project,
  })  : backupId = pulumi.Input.asInput<String>(backupId),
        domainId = pulumi.Input.asInput<String>(domainId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    map['domainId'] = domainId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupManagedidentitiesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1beta1Args(
      backupId: map['backupId'] as String,
      domainId: map['domainId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
