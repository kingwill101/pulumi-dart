// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackupSchedule.
class GetBackupScheduleArgs {
  final pulumi.Input<String> backupScheduleId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String>? project;

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
      backupScheduleId: pulumi.Input.asInput<String>(map['backupScheduleId']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
