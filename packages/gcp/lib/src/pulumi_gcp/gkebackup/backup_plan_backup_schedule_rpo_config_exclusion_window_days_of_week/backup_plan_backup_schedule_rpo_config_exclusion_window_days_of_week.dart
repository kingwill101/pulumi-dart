// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek {
  /// A list of days of week.
  /// Each value may be one of: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek({
    this.daysOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeeksValue = daysOfWeeks;
    if (daysOfWeeksValue != null) {
      map['daysOfWeeks'] = daysOfWeeksValue;
    }
    return map;
  }

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowDaysOfWeek(
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
    );
  }
}
