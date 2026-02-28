// ignore_for_file: unused_element, unnecessary_cast

class DataTransferConfigScheduleOptions {
  /// If true, automatic scheduling of data transfer runs for this
  /// configuration will be disabled. The runs can be started on ad-hoc
  /// basis using transferConfigs.startManualRuns API. When automatic
  /// scheduling is disabled, the TransferConfig.schedule field will
  /// be ignored.
  final bool? disableAutoScheduling;

  /// Defines time to stop scheduling transfer runs. A transfer run cannot be
  /// scheduled at or after the end time. The end time can be changed at any
  /// moment. The time when a data transfer can be triggered manually is not
  /// limited by this option.
  final String? endTime;

  /// Specifies time to start scheduling transfer runs. The first run will be
  /// scheduled at or after the start time according to a recurrence pattern
  /// defined in the schedule string. The start time can be changed at any
  /// moment. The time when a data transfer can be triggered manually is not
  /// limited by this option.
  final String? startTime;

  /// Creates a new [DataTransferConfigScheduleOptions].
  /// [disableAutoScheduling] If true, automatic scheduling of data transfer runs for this
  /// [endTime] Defines time to stop scheduling transfer runs. A transfer run cannot be
  /// [startTime] Specifies time to start scheduling transfer runs. The first run will be
  DataTransferConfigScheduleOptions({
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

  factory DataTransferConfigScheduleOptions.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigScheduleOptions(
      disableAutoScheduling: map['disableAutoScheduling'] == null
          ? null
          : map['disableAutoScheduling'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
