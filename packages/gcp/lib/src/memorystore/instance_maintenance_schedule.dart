// ignore_for_file: unused_element, unnecessary_cast

class InstanceMaintenanceSchedule {
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

  /// Creates a new [InstanceMaintenanceSchedule].
  /// [endTime] (Output)
  /// [scheduleDeadlineTime] (Output)
  /// [startTime] (Output)
  InstanceMaintenanceSchedule({
    this.endTime,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'scheduleDeadlineTime': ?scheduleDeadlineTime,
      'startTime': ?startTime,
    };
  }

  factory InstanceMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceSchedule(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] == null
          ? null
          : map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
