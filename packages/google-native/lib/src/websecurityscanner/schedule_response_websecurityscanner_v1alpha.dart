// ignore_for_file: unused_element, unnecessary_cast


/// Scan schedule configuration.
class ScheduleResponseWebsecurityscannerV1alpha {
  /// The duration of time between executions in days.
  final int intervalDurationDays;
  /// A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  final String scheduleTime;

  /// Creates a new [ScheduleResponseWebsecurityscannerV1alpha].
  /// [intervalDurationDays] The duration of time between executions in days.
  /// [scheduleTime] A timestamp indicates when the next run will be scheduled. The value is refreshed by the server after each run. If unspecified, it will default to current server time, which means the scan will be scheduled to start immediately.
  ScheduleResponseWebsecurityscannerV1alpha({
    required this.intervalDurationDays,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalDurationDays': intervalDurationDays,
      'scheduleTime': scheduleTime,
    };
  }

  factory ScheduleResponseWebsecurityscannerV1alpha.fromMap(Map<String, dynamic> map) {
    return ScheduleResponseWebsecurityscannerV1alpha(
      intervalDurationDays: map['intervalDurationDays'] as int,
      scheduleTime: map['scheduleTime'] as String,
    );
  }
}

