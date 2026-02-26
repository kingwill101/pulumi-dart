// ignore_for_file: unused_element, unnecessary_cast

import '../backup_plan_backup_rule_standard_schedule_backup_window/backup_plan_backup_rule_standard_schedule_backup_window.dart';
import '../backup_plan_backup_rule_standard_schedule_week_day_of_month/backup_plan_backup_rule_standard_schedule_week_day_of_month.dart';

class BackupPlanBackupRuleStandardSchedule {
  /// A BackupWindow defines the window of the day during which backup jobs will run. Jobs are queued at the beginning of the window and will be marked as
  /// `NOT_RUN` if they do not start by the end of the window.
  /// Structure is documented below.
  final BackupPlanBackupRuleStandardScheduleBackupWindow? backupWindow;

  /// Specifies days of months like 1, 5, or 14 on which jobs will run.
  final List<int>? daysOfMonths;

  /// Specifies days of week like MONDAY or TUESDAY, on which jobs will run. This is required for <span pulumi-lang-nodejs="`recurrenceType`" pulumi-lang-dotnet="`RecurrenceType`" pulumi-lang-go="`recurrenceType`" pulumi-lang-python="`recurrence_type`" pulumi-lang-yaml="`recurrenceType`" pulumi-lang-java="`recurrenceType`">`recurrence_type`</span>, `WEEKLY` and is not applicable otherwise.
  /// Each value may be one of: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  /// Specifies frequency for hourly backups. An hourly frequency of 2 means jobs will run every 2 hours from start time till end time defined.
  /// This is required for <span pulumi-lang-nodejs="`recurrenceType`" pulumi-lang-dotnet="`RecurrenceType`" pulumi-lang-go="`recurrenceType`" pulumi-lang-python="`recurrence_type`" pulumi-lang-yaml="`recurrenceType`" pulumi-lang-java="`recurrenceType`">`recurrence_type`</span>, `HOURLY` and is not applicable otherwise.
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
    final map = <String, dynamic>{};
    final backupWindowValue = backupWindow;
    if (backupWindowValue != null) {
      map['backupWindow'] = backupWindowValue.toMap();
    }
    final daysOfMonthsValue = daysOfMonths;
    if (daysOfMonthsValue != null) {
      map['daysOfMonths'] = daysOfMonthsValue;
    }
    final daysOfWeeksValue = daysOfWeeks;
    if (daysOfWeeksValue != null) {
      map['daysOfWeeks'] = daysOfWeeksValue;
    }
    final hourlyFrequencyValue = hourlyFrequency;
    if (hourlyFrequencyValue != null) {
      map['hourlyFrequency'] = hourlyFrequencyValue;
    }
    final monthsValue = months;
    if (monthsValue != null) {
      map['months'] = monthsValue;
    }
    map['recurrenceType'] = recurrenceType;
    map['timeZone'] = timeZone;
    final weekDayOfMonthValue = weekDayOfMonth;
    if (weekDayOfMonthValue != null) {
      map['weekDayOfMonth'] = weekDayOfMonthValue.toMap();
    }
    return map;
  }

  factory BackupPlanBackupRuleStandardSchedule.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupRuleStandardSchedule(
      backupWindow: map['backupWindow'] == null
          ? null
          : BackupPlanBackupRuleStandardScheduleBackupWindow.fromMap(
              (map['backupWindow'] as Map).cast<String, dynamic>()),
      daysOfMonths: map['daysOfMonths'] == null
          ? null
          : (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
      hourlyFrequency:
          map['hourlyFrequency'] == null ? null : map['hourlyFrequency'] as int,
      months:
          map['months'] == null ? null : (map['months'] as List).cast<String>(),
      recurrenceType: map['recurrenceType'] as String,
      timeZone: map['timeZone'] as String,
      weekDayOfMonth: map['weekDayOfMonth'] == null
          ? null
          : BackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(
              (map['weekDayOfMonth'] as Map).cast<String, dynamic>()),
    );
  }
}
