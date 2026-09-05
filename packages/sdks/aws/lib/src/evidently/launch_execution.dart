// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchExecution {
  /// The date and time that the launch ended.
  final pulumi.Input<String?>? endedTime;
  /// The date and time that the launch started.
  final pulumi.Input<String?>? startedTime;

  /// Creates a new [LaunchExecution].
  /// [endedTime] The date and time that the launch ended.
  /// [startedTime] The date and time that the launch started.
  const LaunchExecution({
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
      endedTime: (() { final guardedValue = map['endedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedTime: (() { final guardedValue = map['startedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
