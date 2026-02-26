// ignore_for_file: unused_element, unnecessary_cast

class InstanceMaintenanceSchedule2 {
  /// (Output)
  /// The end time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? endTime;

  /// (Output)
  /// The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? scheduleDeadlineTime;

  /// (Output)
  /// The start time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? startTime;

  InstanceMaintenanceSchedule2({
    this.endTime,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final scheduleDeadlineTimeValue = scheduleDeadlineTime;
    if (scheduleDeadlineTimeValue != null) {
      map['scheduleDeadlineTime'] = scheduleDeadlineTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory InstanceMaintenanceSchedule2.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceSchedule2(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] == null
          ? null
          : map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
