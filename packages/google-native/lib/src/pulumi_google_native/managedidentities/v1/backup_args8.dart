// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Backup.
class BackupArgs8 {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  final Input<String> backupId;
  final Input<String> domainId;

  /// Optional. Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  BackupArgs8({
    required this.backupId,
    required this.domainId,
    this.labels,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
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

  factory BackupArgs8.fromMap(Map<String, dynamic> map) {
    return BackupArgs8(
      backupId: Input.asInput<String>(map['backupId']),
      domainId: Input.asInput<String>(map['domainId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
