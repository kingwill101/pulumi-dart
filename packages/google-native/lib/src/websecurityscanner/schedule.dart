// ignore_for_file: unused_element, unnecessary_cast

/// Scan schedule configuration.
class Schedule {
  /// The duration of time between executions in days.
  final int intervalDurationDays;

  /// A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  final String? scheduleTime;

  /// Creates a new [Schedule].
  /// [intervalDurationDays] The duration of time between executions in days.
  /// [scheduleTime] A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  Schedule({
    required this.intervalDurationDays,
    this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intervalDurationDays'] = intervalDurationDays;
    final scheduleTimeValue = scheduleTime;
    if (scheduleTimeValue != null) {
      map['scheduleTime'] = scheduleTimeValue;
    }
    return map;
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      intervalDurationDays: map['intervalDurationDays'] as int,
      scheduleTime:
          map['scheduleTime'] == null ? null : map['scheduleTime'] as String,
    );
  }
}
