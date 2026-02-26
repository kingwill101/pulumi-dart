// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBackup.
class GetBackupArgs5 {
  final Input<String> backupId;
  final Input<String> location;
  final Input<String>? project;

  GetBackupArgs5({
    required this.backupId,
    required this.location,
    this.project,
  });

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

  factory GetBackupArgs5.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs5(
      backupId: Input.asInput<String>(map['backupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
