// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceMaintenanceSchedule {
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

  /// Creates a new [GetInstanceMaintenanceSchedule].
  /// [endTime] Output only. The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] Output only. The deadline that the maintenance schedule start time
  /// [startTime] Output only. The start time of any upcoming scheduled maintenance for this instance.
  GetInstanceMaintenanceSchedule({
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'scheduleDeadlineTime': scheduleDeadlineTime,
      'startTime': startTime,
    };
  }

  factory GetInstanceMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenanceSchedule(
      endTime: map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
