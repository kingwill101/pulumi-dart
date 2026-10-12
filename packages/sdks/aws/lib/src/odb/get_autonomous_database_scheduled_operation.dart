// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseScheduledOperation {
  /// Day of the week.
  final pulumi.Input<String> dayOfWeek;
  /// Scheduled start time in UTC.
  final pulumi.Input<String> scheduledStartTime;
  /// Scheduled stop time in UTC.
  final pulumi.Input<String> scheduledStopTime;

  /// Creates a new [GetAutonomousDatabaseScheduledOperation].
  /// [dayOfWeek] Day of the week.
  /// [scheduledStartTime] Scheduled start time in UTC.
  /// [scheduledStopTime] Scheduled stop time in UTC.
  const GetAutonomousDatabaseScheduledOperation({
    required this.dayOfWeek,
    required this.scheduledStartTime,
    required this.scheduledStopTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'scheduledStartTime': scheduledStartTime,
      'scheduledStopTime': scheduledStopTime,
    };
  }

  factory GetAutonomousDatabaseScheduledOperation.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseScheduledOperation(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      scheduledStartTime: pulumi.Input.fromValue(map['scheduledStartTime'] as String),
      scheduledStopTime: pulumi.Input.fromValue(map['scheduledStopTime'] as String),
    );
  }
}
