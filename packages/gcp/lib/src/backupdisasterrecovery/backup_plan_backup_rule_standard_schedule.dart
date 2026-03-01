// ignore_for_file: unused_element, unnecessary_cast

import 'backup_plan_backup_rule_standard_schedule_backup_window.dart';
import 'backup_plan_backup_rule_standard_schedule_week_day_of_month.dart';

class BackupPlanBackupRuleStandardSchedule {
  /// A BackupWindow defines the window of the day during which backup jobs will run. Jobs are queued at the beginning of the window and will be marked as
  /// `NOT_RUN` if they do not start by the end of the window.
  /// Structure is documented below.
  final BackupPlanBackupRuleStandardScheduleBackupWindow? backupWindow;

  /// Specifies days of months like 1, 5, or 14 on which jobs will run.
  final List<int>? daysOfMonths;

  /// Specifies days of week like MONDAY or TUESDAY, on which jobs will run. This is required for `recurrence_type`, `WEEKLY` and is not applicable otherwise.
  /// Each value may be one of: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  /// Specifies frequency for hourly backups. An hourly frequency of 2 means jobs will run every 2 hours from start time till end time defined.
  /// This is required for `recurrence_type`, `HOURLY` and is not applicable otherwise.
  final int? hourlyFrequency;

  /// Specifies values of months
  /// Each value may be one of: `MONTH_UNSPECIFIED`, `JANUARY`, `FEBRUARY`, `MARCH`, `APRIL`, `MAY`, `JUNE`, `JULY`, `AUGUST`, `SEPTEMBER`, `OCTOBER`, `NOVEMBER`, `DECEMBER`.
  final List<String>? months;

  /// RecurrenceType enumerates the applicable periodicity for the schedule.
  /// Possible values are: `HOURLY`, `DAILY`, `WEEKLY`, `MONTHLY`, `YEARLY`.
  final String recurrenceType;

  /// The time zone to be used when interpreting the schedule.
  final String timeZone;

  /// Specifies a week day of the month like FIRST SUNDAY or LAST MONDAY, on which jobs will run.
  /// Structure is documented below.
  final BackupPlanBackupRuleStandardScheduleWeekDayOfMonth? weekDayOfMonth;

  /// Creates a new [BackupPlanBackupRuleStandardSchedule].
  /// [backupWindow] A BackupWindow defines the window of the day during which backup jobs will run. Jobs are queued at the beginning of the window and will be marked as
  /// [daysOfMonths] Specifies days of months like 1, 5, or 14 on which jobs will run.
  /// [daysOfWeeks] Specifies days of week like MONDAY or TUESDAY, on which jobs will run. This is required for `recurrence_type`, `WEEKLY` and is not applicable otherwise.
  /// [hourlyFrequency] Specifies frequency for hourly backups. An hourly frequency of 2 means jobs will run every 2 hours from start time till end time defined.
  /// [months] Specifies values of months
  /// [recurrenceType] RecurrenceType enumerates the applicable periodicity for the schedule.
  /// [timeZone] The time zone to be used when interpreting the schedule.
  /// [weekDayOfMonth] Specifies a week day of the month like FIRST SUNDAY or LAST MONDAY, on which jobs will run.
  BackupPlanBackupRuleStandardSchedule({
    this.backupWindow,
    this.daysOfMonths,
    this.daysOfWeeks,
    this.hourlyFrequency,
    this.months,
    required this.recurrenceType,
    required this.timeZone,
    this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': ?backupWindow == null ? null : backupWindow!.toMap(),
      'daysOfMonths': ?daysOfMonths,
      'daysOfWeeks': ?daysOfWeeks,
      'hourlyFrequency': ?hourlyFrequency,
      'months': ?months,
      'recurrenceType': recurrenceType,
      'timeZone': timeZone,
      'weekDayOfMonth': ?weekDayOfMonth == null
          ? null
          : weekDayOfMonth!.toMap(),
    };
  }

  factory BackupPlanBackupRuleStandardSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPlanBackupRuleStandardSchedule(
      backupWindow: map['backupWindow'] == null
          ? null
          : BackupPlanBackupRuleStandardScheduleBackupWindow.fromMap(
              (map['backupWindow'] as Map).cast<String, dynamic>(),
            ),
      daysOfMonths: map['daysOfMonths'] == null
          ? null
          : (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
      hourlyFrequency: map['hourlyFrequency'] == null
          ? null
          : map['hourlyFrequency'] as int,
      months: map['months'] == null
          ? null
          : (map['months'] as List).cast<String>(),
      recurrenceType: map['recurrenceType'] as String,
      timeZone: map['timeZone'] as String,
      weekDayOfMonth: map['weekDayOfMonth'] == null
          ? null
          : BackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(
              (map['weekDayOfMonth'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
