// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseScheduledOperation {
  /// Day of the week.
  final pulumi.Input<String> dayOfWeek;
  /// Scheduled start time in UTC.
  final pulumi.Input<String?>? scheduledStartTime;
  /// Scheduled stop time in UTC.
  final pulumi.Input<String?>? scheduledStopTime;

  /// Creates a new [AutonomousDatabaseScheduledOperation].
  /// [dayOfWeek] Day of the week.
  /// [scheduledStartTime] Scheduled start time in UTC.
  /// [scheduledStopTime] Scheduled stop time in UTC.
  const AutonomousDatabaseScheduledOperation({
    required this.dayOfWeek,
    this.scheduledStartTime,
    this.scheduledStopTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'scheduledStartTime': ?scheduledStartTime,
      'scheduledStopTime': ?scheduledStopTime,
    };
  }

  factory AutonomousDatabaseScheduledOperation.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseScheduledOperation(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      scheduledStartTime: (() { final guardedValue = map['scheduledStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledStopTime: (() { final guardedValue = map['scheduledStopTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
