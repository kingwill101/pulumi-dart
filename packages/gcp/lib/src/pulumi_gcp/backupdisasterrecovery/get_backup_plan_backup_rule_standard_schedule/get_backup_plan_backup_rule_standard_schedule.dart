// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backup_plan_backup_rule_standard_schedule_backup_window/get_backup_plan_backup_rule_standard_schedule_backup_window.dart';
import '../get_backup_plan_backup_rule_standard_schedule_week_day_of_month/get_backup_plan_backup_rule_standard_schedule_week_day_of_month.dart';

class GetBackupPlanBackupRuleStandardSchedule {
  /// A BackupWindow defines the window of the day during which backup jobs will run. Jobs are queued at the beginning of the window and will be marked as
  /// 'NOT_RUN' if they do not start by the end of the window.
  final List<GetBackupPlanBackupRuleStandardScheduleBackupWindow> backupWindows;

  /// Specifies days of months like 1, 5, or 14 on which jobs will run.
  final List<int> daysOfMonths;

  /// Specifies days of week like MONDAY or TUESDAY, on which jobs will run. This is required for 'recurrence_type', 'WEEKLY' and is not applicable otherwise. Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final List<String> daysOfWeeks;

  /// Specifies frequency for hourly backups. An hourly frequency of 2 means jobs will run every 2 hours from start time till end time defined.
  /// This is required for 'recurrence_type', 'HOURLY' and is not applicable otherwise.
  final int hourlyFrequency;

  /// Specifies values of months Possible values: ["MONTH_UNSPECIFIED", "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"]
  final List<String> months;

  /// RecurrenceType enumerates the applicable periodicity for the schedule. Possible values: ["HOURLY", "DAILY", "WEEKLY", "MONTHLY", "YEARLY"]
  final String recurrenceType;

  /// The time zone to be used when interpreting the schedule.
  final String timeZone;

  /// Specifies a week day of the month like FIRST SUNDAY or LAST MONDAY, on which jobs will run.
  final List<GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth>
      weekDayOfMonths;

  GetBackupPlanBackupRuleStandardSchedule({
    required this.backupWindows,
    required this.daysOfMonths,
    required this.daysOfWeeks,
    required this.hourlyFrequency,
    required this.months,
    required this.recurrenceType,
    required this.timeZone,
    required this.weekDayOfMonths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupWindows'] = Input.encodeList<
        GetBackupPlanBackupRuleStandardScheduleBackupWindow,
        Map<String, dynamic>>(backupWindows, (value) => value.toMap());
    map['daysOfMonths'] = daysOfMonths;
    map['daysOfWeeks'] = daysOfWeeks;
    map['hourlyFrequency'] = hourlyFrequency;
    map['months'] = months;
    map['recurrenceType'] = recurrenceType;
    map['timeZone'] = timeZone;
    map['weekDayOfMonths'] = Input.encodeList<
        GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth,
        Map<String, dynamic>>(weekDayOfMonths, (value) => value.toMap());
    return map;
  }

  factory GetBackupPlanBackupRuleStandardSchedule.fromMap(
      Map<String, dynamic> map) {
    return GetBackupPlanBackupRuleStandardSchedule(
      backupWindows:
          Input.decodeList<GetBackupPlanBackupRuleStandardScheduleBackupWindow>(
              map['backupWindows'],
              (value) =>
                  GetBackupPlanBackupRuleStandardScheduleBackupWindow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      daysOfMonths: (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hourlyFrequency: map['hourlyFrequency'] as int,
      months: (map['months'] as List).cast<String>(),
      recurrenceType: map['recurrenceType'] as String,
      timeZone: map['timeZone'] as String,
      weekDayOfMonths: Input.decodeList<
              GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth>(
          map['weekDayOfMonths'],
          (value) =>
              GetBackupPlanBackupRuleStandardScheduleWeekDayOfMonth.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
