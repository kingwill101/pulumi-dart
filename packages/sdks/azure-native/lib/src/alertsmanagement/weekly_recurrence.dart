// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly recurrence object.
class WeeklyRecurrence {
  /// Specifies the values for weekly recurrence pattern.
  final pulumi.Input<List<String>> daysOfWeek;
  /// End time for recurrence.
  final pulumi.Input<String>? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Weekly'.
  final pulumi.Input<String> recurrenceType;
  /// Start time for recurrence.
  final pulumi.Input<String>? startTime;

  /// Creates a new [WeeklyRecurrence].
  /// [daysOfWeek] Specifies the values for weekly recurrence pattern.
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  WeeklyRecurrence({
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

  factory WeeklyRecurrence.fromMap(Map<String, dynamic> map) {
    return WeeklyRecurrence(
      daysOfWeek: ((map['daysOfWeek'] as List).cast<String>()).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      recurrenceType: (map['recurrenceType'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

