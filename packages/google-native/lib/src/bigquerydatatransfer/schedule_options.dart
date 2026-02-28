// ignore_for_file: unused_element, unnecessary_cast

/// Options customizing the data transfer schedule.
class ScheduleOptions {
  /// If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.
  final bool? disableAutoScheduling;

  /// Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  final String? endTime;

  /// Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  final String? startTime;

  /// Creates a new [ScheduleOptions].
  /// [disableAutoScheduling] If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored.
  /// [endTime] Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  /// [startTime] Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option.
  ScheduleOptions({
    this.disableAutoScheduling,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableAutoSchedulingValue = disableAutoScheduling;
    if (disableAutoSchedulingValue != null) {
      map['disableAutoScheduling'] = disableAutoSchedulingValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ScheduleOptions.fromMap(Map<String, dynamic> map) {
    return ScheduleOptions(
      disableAutoScheduling: map['disableAutoScheduling'] == null
          ? null
          : map['disableAutoScheduling'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
