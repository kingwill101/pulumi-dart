// ignore_for_file: unused_element, unnecessary_cast


class BackupPlanBackupRuleStandardScheduleBackupWindow {
  /// The hour of the day (1-24) when the window ends, for example, if the value of end hour of the day is 10, that means the backup window end time is 10:00.
  /// The end hour of the day should be greater than the start
  final int? endHourOfDay;
  /// The hour of the day (0-23) when the window starts, for example, if the value of the start hour of the day is 6, that means the backup window starts at 6:00.
  final int startHourOfDay;

  /// Creates a new [BackupPlanBackupRuleStandardScheduleBackupWindow].
  /// [endHourOfDay] The hour of the day (1-24) when the window ends, for example, if the value of end hour of the day is 10, that means the backup window end time is 10:00.
  /// [startHourOfDay] The hour of the day (0-23) when the window starts, for example, if the value of the start hour of the day is 6, that means the backup window starts at 6:00.
  BackupPlanBackupRuleStandardScheduleBackupWindow({
    this.endHourOfDay,
    required this.startHourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endHourOfDay': ?endHourOfDay,
      'startHourOfDay': startHourOfDay,
    };
  }

  factory BackupPlanBackupRuleStandardScheduleBackupWindow.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupRuleStandardScheduleBackupWindow(
      endHourOfDay: map['endHourOfDay'] == null ? null : map['endHourOfDay'] as int,
      startHourOfDay: map['startHourOfDay'] as int,
    );
  }
}

