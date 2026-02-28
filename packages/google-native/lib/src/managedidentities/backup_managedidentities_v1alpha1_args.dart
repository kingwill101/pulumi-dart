// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_backup_managedidentities_v1alpha1_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_backup_managedidentities_v1alpha1_args_doc}
class BackupManagedidentitiesV1alpha1Args {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  final pulumi.Input<String> backupId;

  /// Optional. A short description of the backup.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> domainId;

  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  /// Creates a new [BackupManagedidentitiesV1alpha1Args].
  /// [backupId] Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  /// [description] Optional. A short description of the backup.
  /// [domainId] Required.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [project] Optional.
  BackupManagedidentitiesV1alpha1Args({
    required String backupId,
    String? description,
    required String domainId,
    Map<String, String>? labels,
    String? project,
  })  : backupId = pulumi.Input.asInput<String>(backupId),
        description = pulumi.Input.asOptionalInput<String>(description),
        domainId = pulumi.Input.asInput<String>(domainId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainId'] = domainId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BackupManagedidentitiesV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return BackupManagedidentitiesV1alpha1Args(
      backupId: map['backupId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      domainId: map['domainId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
