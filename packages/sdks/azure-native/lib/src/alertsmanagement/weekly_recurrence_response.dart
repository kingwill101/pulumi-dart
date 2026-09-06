// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly recurrence object.
class WeeklyRecurrenceResponse {
  /// Specifies the values for weekly recurrence pattern.
  final pulumi.Input<List<String>> daysOfWeek;
  /// End time for recurrence.
  final pulumi.Input<String?>? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Weekly'.
  final pulumi.Input<String> recurrenceType;
  /// Start time for recurrence.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [WeeklyRecurrenceResponse].
  /// [daysOfWeek] Specifies the values for weekly recurrence pattern.
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  const WeeklyRecurrenceResponse({
    required this.daysOfWeek,
    this.endTime,
    required this.recurrenceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': daysOfWeek,
      'endTime': ?endTime,
      'recurrenceType': recurrenceType,
      'startTime': ?startTime,
    };
  }

  factory WeeklyRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyRecurrenceResponse(
      daysOfWeek: pulumi.Input.fromValue((map['daysOfWeek'] as List).cast<String>()),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
