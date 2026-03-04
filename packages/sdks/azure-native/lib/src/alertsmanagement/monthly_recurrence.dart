// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly recurrence object.
class MonthlyRecurrence {
  /// Specifies the values for monthly recurrence pattern.
  final pulumi.Input<List<int>> daysOfMonth;

  /// End time for recurrence.
  final pulumi.Input<String>? endTime;

  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Monthly'.
  final pulumi.Input<String> recurrenceType;

  /// Start time for recurrence.
  final pulumi.Input<String>? startTime;

  /// Creates a new [MonthlyRecurrence].
  /// [daysOfMonth] Specifies the values for monthly recurrence pattern.
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  MonthlyRecurrence({
    required this.daysOfMonth,
    this.endTime,
    required this.recurrenceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonth': daysOfMonth,
      'endTime': ?endTime,
      'recurrenceType': recurrenceType,
      'startTime': ?startTime,
    };
  }

  factory MonthlyRecurrence.fromMap(Map<String, dynamic> map) {
    return MonthlyRecurrence(
      daysOfMonth: pulumi.Input.fromValue(
        (map['daysOfMonth'] as List).cast<int>(),
      ),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
