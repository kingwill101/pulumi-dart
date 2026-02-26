// ignore_for_file: unused_element, unnecessary_cast

class LaunchExecution {
  /// The date and time that the launch ended.
  final String? endedTime;

  /// The date and time that the launch started.
  final String? startedTime;

  LaunchExecution({
    this.endedTime,
    this.startedTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endedTimeValue = endedTime;
    if (endedTimeValue != null) {
      map['endedTime'] = endedTimeValue;
    }
    final startedTimeValue = startedTime;
    if (startedTimeValue != null) {
      map['startedTime'] = startedTimeValue;
    }
    return map;
  }

  factory LaunchExecution.fromMap(Map<String, dynamic> map) {
    return LaunchExecution(
      endedTime: map['endedTime'] == null ? null : map['endedTime'] as String,
      startedTime:
          map['startedTime'] == null ? null : map['startedTime'] as String,
    );
  }
}
