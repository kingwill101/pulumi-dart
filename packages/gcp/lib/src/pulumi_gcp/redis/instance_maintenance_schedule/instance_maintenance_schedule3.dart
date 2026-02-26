// ignore_for_file: unused_element, unnecessary_cast

class InstanceMaintenanceSchedule3 {
  /// (Output)
  /// Output only. The end time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? endTime;

  /// (Output)
  /// Output only. The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? scheduleDeadlineTime;

  /// (Output)
  /// Output only. The start time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String? startTime;

  InstanceMaintenanceSchedule3({
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

  factory InstanceMaintenanceSchedule3.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceSchedule3(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] == null
          ? null
          : map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
