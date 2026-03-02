// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Daily recurrence object.
class DailyRecurrence {
  /// End time for recurrence.
  final pulumi.Input<String> endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Daily'.
  final pulumi.Input<String> recurrenceType;
  /// Start time for recurrence.
  final pulumi.Input<String> startTime;

  /// Creates a new [DailyRecurrence].
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  DailyRecurrence({
    required this.endTime,
    required this.recurrenceType,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrenceType': recurrenceType,
      'startTime': startTime,
    };
  }

  factory DailyRecurrence.fromMap(Map<String, dynamic> map) {
    return DailyRecurrence(
      endTime: (map['endTime'] as String).input(),
      recurrenceType: (map['recurrenceType'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

