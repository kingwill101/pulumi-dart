// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monthly recurrence object.
class MonthlyRecurrenceResponse {
  /// Specifies the values for monthly recurrence pattern.
  final pulumi.Input<List<int>> daysOfMonth;
  /// End time for recurrence.
  final pulumi.Input<String>? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Monthly'.
  final pulumi.Input<String> recurrenceType;
  /// Start time for recurrence.
  final pulumi.Input<String>? startTime;

  /// Creates a new [MonthlyRecurrenceResponse].
  /// [daysOfMonth] Specifies the values for monthly recurrence pattern.
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  MonthlyRecurrenceResponse({
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

  factory MonthlyRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return MonthlyRecurrenceResponse(
      daysOfMonth: ((map['daysOfMonth'] as List).cast<int>()).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      recurrenceType: (map['recurrenceType'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

