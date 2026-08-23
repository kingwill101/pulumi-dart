// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Daily recurrence object.
class DailyRecurrenceResponse {
  /// End time for recurrence.
  final pulumi.Input<String>? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Daily'.
  final pulumi.Input<String> recurrenceType;
  /// Start time for recurrence.
  final pulumi.Input<String>? startTime;

  /// Creates a new [DailyRecurrenceResponse].
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  const DailyRecurrenceResponse({
    this.endTime,
    required this.recurrenceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'recurrenceType': recurrenceType,
      'startTime': ?startTime,
    };
  }

  factory DailyRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DailyRecurrenceResponse(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
