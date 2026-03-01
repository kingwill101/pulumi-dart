// ignore_for_file: unused_element, unnecessary_cast

/// Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.
class MaintenanceScheduleResponse {
  /// If the scheduled maintenance can be rescheduled, default is true.
  final bool canReschedule;

  /// The end time of any upcoming scheduled maintenance for this instance.
  final String endTime;

  /// The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  final String scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  final String startTime;

  /// Creates a new [MaintenanceScheduleResponse].
  /// [canReschedule] If the scheduled maintenance can be rescheduled, default is true.
  /// [endTime] The end time of any upcoming scheduled maintenance for this instance.
  /// [scheduleDeadlineTime] The deadline that the maintenance schedule start time can not go beyond, including reschedule.
  /// [startTime] The start time of any upcoming scheduled maintenance for this instance.
  MaintenanceScheduleResponse({
    required this.canReschedule,
    required this.endTime,
    required this.scheduleDeadlineTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'endTime': endTime,
      'scheduleDeadlineTime': scheduleDeadlineTime,
      'startTime': startTime,
    };
  }

  factory MaintenanceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponse(
      canReschedule: map['canReschedule'] as bool,
      endTime: map['endTime'] as String,
      scheduleDeadlineTime: map['scheduleDeadlineTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
