// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek {
  /// The day of the week to create the snapshot. e.g. MONDAY
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String day;

  /// Time within the window to start the operations.
  /// It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String startTime;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek].
  /// [day] The day of the week to create the snapshot. e.g. MONDAY
  /// [startTime] Time within the window to start the operations.
  ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'day': day, 'startTime': startTime};
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek(
      day: map['day'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
