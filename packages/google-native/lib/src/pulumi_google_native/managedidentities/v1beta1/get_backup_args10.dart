// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackup.
class GetBackupArgs10 {
  final Input<String> backupId;
  final Input<String> domainId;
  final Input<String>? project;

  GetBackupArgs10({
    required this.backupId,
    required this.domainId,
    this.project,
  });

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

  factory GetBackupArgs10.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs10(
      backupId: Input.asInput<String>(map['backupId']),
      domainId: Input.asInput<String>(map['domainId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
