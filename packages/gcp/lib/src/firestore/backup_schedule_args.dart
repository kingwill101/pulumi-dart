// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_weekly_recurrence.dart';

/// {@template pulumi_firestore_backup_schedule_backup_schedule_args_doc}
/// The set of arguments for BackupSchedule.
/// {@endtemplate}
/// {@macro pulumi_firestore_backup_schedule_backup_schedule_args_doc}
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

  /// Creates a new [BackupScheduleArgs].
  /// [dailyRecurrence] For a schedule that runs daily.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [project] The ID of the project in which the resource belongs.
  /// [retention] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [weeklyRecurrence] For a schedule that runs weekly on a specific day.
  BackupScheduleArgs({
    Map<String, dynamic>? dailyRecurrence,
    String? database,
    String? project,
    required String retention,
    BackupScheduleWeeklyRecurrence? weeklyRecurrence,
  }) :
      dailyRecurrence = pulumi.Input.asOptionalInput<Map<String, dynamic>>(dailyRecurrence),
      database = pulumi.Input.asOptionalInput<String>(database),
      project = pulumi.Input.asOptionalInput<String>(project),
      retention = pulumi.Input.asInput<String>(retention),
      weeklyRecurrence = pulumi.Input.asOptionalInput<BackupScheduleWeeklyRecurrence>(weeklyRecurrence);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyRecurrence': ?dailyRecurrence,
      'database': ?database,
      'project': ?project,
      'retention': retention,
      'weeklyRecurrence': ?pulumi.Input.mapOptionalInputValue<BackupScheduleWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrence, (value) => value.toMap()),
    };
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      dailyRecurrence: map['dailyRecurrence'] == null ? null : (map['dailyRecurrence'] as Map).cast<String, dynamic>(),
      database: map['database'] == null ? null : map['database'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      retention: map['retention'] as String,
      weeklyRecurrence: map['weeklyRecurrence'] == null ? null : BackupScheduleWeeklyRecurrence.fromMap((map['weeklyRecurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

