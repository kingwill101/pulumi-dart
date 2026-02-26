// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMaintenanceSchedule3 {
  /// Output only. The end time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String endTime;

  /// Output only. The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String scheduleDeadlineTime;

  /// Output only. The start time of any upcoming scheduled maintenance for this instance.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String startTime;

  GetInstanceMaintenanceSchedule3({
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['scheduleDeadlineTime'] = scheduleDeadlineTime;
    map['startTime'] = startTime;
    return map;
  }

  factory GetInstanceMaintenanceSchedule3.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenanceSchedule3(
      endTime: map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
