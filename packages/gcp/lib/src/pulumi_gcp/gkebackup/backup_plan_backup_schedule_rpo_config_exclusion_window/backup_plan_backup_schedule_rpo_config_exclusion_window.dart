// ignore_for_file: unused_element, unnecessary_cast

import '../backup_plan_backup_schedule_rpo_config_exclusion_window_days_of_week/backup_plan_backup_schedule_rpo_config_exclusion_window_days_of_week.dart';
import '../backup_plan_backup_schedule_rpo_config_exclusion_window_single_occurrence_date/backup_plan_backup_schedule_rpo_config_exclusion_window_single_occurrence_date.dart';
import '../backup_plan_backup_schedule_rpo_config_exclusion_window_start_time/backup_plan_backup_schedule_rpo_config_exclusion_window_start_time.dart';

class BackupPlanBackupScheduleRpoConfigExclusionWindow {
  /// The exclusion window occurs every day if set to "True".
  /// Specifying this field to "False" is an error.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  final bool? daily;

  /// The exclusion window occurs on these days of each week in UTC.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  /// Structure is documented below.
  final BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek? daysOfWeek;

  /// Specifies duration of the window in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Restrictions for duration based on the
  /// recurrence type to allow some time for backup to happen:
  /// - single_occurrence_date:  no restriction
  /// - daily window: duration < 24 hours
  /// - weekly window:
  /// - days of week includes all seven days of a week: duration < 24 hours
  /// - all other weekly window: duration < 168 hours (i.e., 24 * 7 hours)
  final String duration;

  /// No recurrence. The exclusion window occurs only once and on this date in UTC.
  /// Only one of singleOccurrenceDate, daily and daysOfWeek may be set.
  /// Structure is documented below.
  final BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate?
      singleOccurrenceDate;

  /// Specifies the start time of the window using time of the day in UTC.
  /// Structure is documented below.
  final BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime startTime;

  BackupPlanBackupScheduleRpoConfigExclusionWindow({
    this.daily,
    this.daysOfWeek,
    required this.duration,
    this.singleOccurrenceDate,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyValue = daily;
    if (dailyValue != null) {
      map['daily'] = dailyValue;
    }
    final daysOfWeekValue = daysOfWeek;
    if (daysOfWeekValue != null) {
      map['daysOfWeek'] = daysOfWeekValue.toMap();
    }
    map['duration'] = duration;
    final singleOccurrenceDateValue = singleOccurrenceDate;
    if (singleOccurrenceDateValue != null) {
      map['singleOccurrenceDate'] = singleOccurrenceDateValue.toMap();
    }
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindow.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindow(
      daily: map['daily'] == null ? null : map['daily'] as bool,
      daysOfWeek: map['daysOfWeek'] == null
          ? null
          : BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek.fromMap(
              (map['daysOfWeek'] as Map).cast<String, dynamic>()),
      duration: map['duration'] as String,
      singleOccurrenceDate: map['singleOccurrenceDate'] == null
          ? null
          : BackupPlanBackupScheduleRpoConfigExclusionWindowSingleOccurrenceDate
              .fromMap(
                  (map['singleOccurrenceDate'] as Map).cast<String, dynamic>()),
      startTime:
          BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime.fromMap(
              (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
