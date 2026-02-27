// ignore_for_file: unused_element, unnecessary_cast

/// Upcoming maintenance schedule.
class MaintenanceScheduleResponseMemcacheV1beta2 {
  /// The end time of any upcoming scheduled maintenance for this instance.
  final String endTime;

  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final String scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  final String startTime;

  MaintenanceScheduleResponseMemcacheV1beta2({
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

  factory MaintenanceScheduleResponseMemcacheV1beta2.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceScheduleResponseMemcacheV1beta2(
      endTime: map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
