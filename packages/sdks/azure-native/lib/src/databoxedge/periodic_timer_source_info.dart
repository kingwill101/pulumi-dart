// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Periodic timer event source.
class PeriodicTimerSourceInfo {
  /// Periodic frequency at which timer event needs to be raised. Supports daily, hourly, minutes, and seconds.
  final pulumi.Input<String> schedule;
  /// The time of the day that results in a valid trigger. Schedule is computed with reference to the time specified upto seconds. If timezone is not specified the time will considered to be in device timezone. The value will always be returned as UTC time.
  final pulumi.Input<String> startTime;
  /// Topic where periodic events are published to IoT device.
  final pulumi.Input<String>? topic;

  /// Creates a new [PeriodicTimerSourceInfo].
  /// [schedule] Periodic frequency at which timer event needs to be raised. Supports daily, hourly, minutes, and seconds.
  /// [startTime] The time of the day that results in a valid trigger. Schedule is computed with reference to the time specified upto seconds. If timezone is not specified the time will considered to be in device timezone. The value will always be returned as UTC time.
  /// [topic] Topic where periodic events are published to IoT device.
  const PeriodicTimerSourceInfo({
    required this.schedule,
    required this.startTime,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
      'startTime': startTime,
      'topic': ?topic,
    };
  }

  factory PeriodicTimerSourceInfo.fromMap(Map<String, dynamic> map) {
    return PeriodicTimerSourceInfo(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

