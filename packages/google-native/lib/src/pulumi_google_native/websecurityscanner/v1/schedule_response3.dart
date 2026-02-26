// ignore_for_file: unused_element, unnecessary_cast

/// Scan schedule configuration.
class ScheduleResponse3 {
  /// The duration of time between executions in days.
  final int intervalDurationDays;

  /// A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  final String scheduleTime;

  ScheduleResponse3({
    required this.intervalDurationDays,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intervalDurationDays'] = intervalDurationDays;
    map['scheduleTime'] = scheduleTime;
    return map;
  }

  factory ScheduleResponse3.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse3(
      intervalDurationDays: map['intervalDurationDays'] as int,
      scheduleTime: map['scheduleTime'] as String,
    );
  }
}
