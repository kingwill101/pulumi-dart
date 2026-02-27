// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBackupSchedule.
class GetBackupScheduleArgs {
  final Input<String> backupScheduleId;
  final Input<String> databaseId;
  final Input<String>? project;

  GetBackupScheduleArgs({
    required this.backupScheduleId,
    required this.databaseId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupScheduleId'] = backupScheduleId;
    map['databaseId'] = databaseId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupScheduleArgs(
      backupScheduleId: Input.asInput<String>(map['backupScheduleId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
