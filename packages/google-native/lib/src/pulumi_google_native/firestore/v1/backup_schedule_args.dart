// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_weekly_recurrence.dart';

/// The set of arguments for BackupSchedule.
class BackupScheduleArgs {
  /// For a schedule that runs daily at a specified time.
  final pulumi.Input<Map<String, dynamic>>? dailyRecurrence;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String>? project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  final pulumi.Input<String>? retention;

  /// For a schedule that runs weekly on a specific day and time.
  final pulumi.Input<GoogleFirestoreAdminV1WeeklyRecurrence>? weeklyRecurrence;

  BackupScheduleArgs({
    this.dailyRecurrence,
    required this.databaseId,
    this.project,
    this.retention,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyRecurrenceValue = dailyRecurrence;
    if (dailyRecurrenceValue != null) {
      map['dailyRecurrence'] = dailyRecurrenceValue;
    }
    map['databaseId'] = databaseId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retentionValue = retention;
    if (retentionValue != null) {
      map['retention'] = retentionValue;
    }
    final weeklyRecurrenceValue = weeklyRecurrence;
    if (weeklyRecurrenceValue != null) {
      map['weeklyRecurrence'] = pulumi.Input.mapOptionalInputValue<
              GoogleFirestoreAdminV1WeeklyRecurrence, Map<String, dynamic>>(
          weeklyRecurrenceValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      dailyRecurrence: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['dailyRecurrence']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      retention: pulumi.Input.asOptionalInput<String>(map['retention']),
      weeklyRecurrence:
          pulumi.Input.asOptionalInput<GoogleFirestoreAdminV1WeeklyRecurrence>(
              map['weeklyRecurrence']),
    );
  }
}
