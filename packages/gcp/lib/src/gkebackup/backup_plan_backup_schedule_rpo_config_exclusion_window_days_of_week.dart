// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek {
  /// A list of days of week.
  /// Each value may be one of: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek].
  /// [daysOfWeeks] A list of days of week.
  BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek({
    this.daysOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'daysOfWeeks': ?daysOfWeeks};
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek(
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
    );
  }
}
