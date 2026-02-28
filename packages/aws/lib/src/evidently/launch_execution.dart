// ignore_for_file: unused_element, unnecessary_cast


class LaunchExecution {
  /// The date and time that the launch ended.
  final String? endedTime;
  /// The date and time that the launch started.
  final String? startedTime;

  /// Creates a new [LaunchExecution].
  /// [endedTime] The date and time that the launch ended.
  /// [startedTime] The date and time that the launch started.
  LaunchExecution({
    this.endedTime,
    this.startedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedTime': ?endedTime,
      'startedTime': ?startedTime,
    };
  }

  factory LaunchExecution.fromMap(Map<String, dynamic> map) {
    return LaunchExecution(
      endedTime: map['endedTime'] == null ? null : map['endedTime'] as String,
      startedTime: map['startedTime'] == null ? null : map['startedTime'] as String,
    );
  }
}

