// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Backup.
class BackupManagedidentitiesV1beta1Args {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  final pulumi.Input<String> backupId;

  /// Optional. A short description of the backup.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> domainId;

  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  BackupManagedidentitiesV1beta1Args({
    required this.backupId,
    this.description,
    required this.domainId,
    this.labels,
    this.project,
  });

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

  factory BackupManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BackupManagedidentitiesV1beta1Args(
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
