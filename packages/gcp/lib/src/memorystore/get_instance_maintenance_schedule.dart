// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceMaintenanceSchedule {
  /// The end time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String endTime;
  /// The deadline that the maintenance schedule start time
  /// can not go beyond, including reschedule.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String scheduleDeadlineTime;
  /// The start time of any upcoming scheduled maintenance for this cluster.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final String startTime;

  /// Creates a new [GetInstanceMaintenanceSchedule].
  /// [endTime] The end time of any upcoming scheduled maintenance for this cluster.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time
  /// [startTime] The start time of any upcoming scheduled maintenance for this cluster.
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

