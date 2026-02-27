// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_schedule_weekly_recurrence/backup_schedule_weekly_recurrence.dart';

/// The set of arguments for BackupSchedule.
class BackupScheduleArgs {
  /// For a schedule that runs daily.
  final pulumi.Input<Map<String, dynamic>>? dailyRecurrence;

  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// You can set this to a value up to 14 weeks.
  final pulumi.Input<String> retention;

  /// For a schedule that runs weekly on a specific day.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleWeeklyRecurrence>? weeklyRecurrence;

  BackupScheduleArgs({
    this.dailyRecurrence,
    this.database,
    this.project,
    required this.retention,
    this.weeklyRecurrence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyRecurrenceValue = dailyRecurrence;
    if (dailyRecurrenceValue != null) {
      map['dailyRecurrence'] = dailyRecurrenceValue;
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['retention'] = retention;
    final weeklyRecurrenceValue = weeklyRecurrence;
    if (weeklyRecurrenceValue != null) {
      map['weeklyRecurrence'] = pulumi.Input.mapOptionalInputValue<
              BackupScheduleWeeklyRecurrence, Map<String, dynamic>>(
          weeklyRecurrenceValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      dailyRecurrence: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['dailyRecurrence']),
      database: pulumi.Input.asOptionalInput<String>(map['database']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      retention: pulumi.Input.asInput<String>(map['retention']),
      weeklyRecurrence:
          pulumi.Input.asOptionalInput<BackupScheduleWeeklyRecurrence>(
              map['weeklyRecurrence']),
    );
  }
}
