// ignore_for_file: unused_element, unnecessary_cast

/// Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.
class MaintenanceScheduleResponseRedisV1beta1 {
  /// If the scheduled maintenance can be rescheduled, default is true.
  final bool canReschedule;

  /// The end time of any upcoming scheduled maintenance for this instance.
  final String endTime;

  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final String scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  final String startTime;

  /// Creates a new [MaintenanceScheduleResponseRedisV1beta1].
  /// [canReschedule] If the scheduled maintenance can be rescheduled, default is true.
  /// [endTime] The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  MaintenanceScheduleResponseRedisV1beta1({
    required this.canReschedule,
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canReschedule'] = canReschedule;
    map['endTime'] = endTime;
    map['scheduleDeadlineTime'] = scheduleDeadlineTime;
    map['startTime'] = startTime;
    return map;
  }

  factory MaintenanceScheduleResponseRedisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceScheduleResponseRedisV1beta1(
      canReschedule: map['canReschedule'] as bool,
      endTime: map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
