// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for a given suppression configuration.
class SuppressionSchedule {
  /// End date for suppression
  final pulumi.Input<String?>? endDate;
  /// End date for suppression
  final pulumi.Input<String?>? endTime;
  /// Specifies the values for recurrence pattern
  final pulumi.Input<List<int>?>? recurrenceValues;
  /// Start date for suppression
  final pulumi.Input<String?>? startDate;
  /// Start time for suppression
  final pulumi.Input<String?>? startTime;

  /// Creates a new [SuppressionSchedule].
  /// [endDate] End date for suppression
  /// [endTime] End date for suppression
  /// [recurrenceValues] Specifies the values for recurrence pattern
  /// [startDate] Start date for suppression
  /// [startTime] Start time for suppression
  const SuppressionSchedule({
    this.endDate,
    this.endTime,
    this.recurrenceValues,
    this.startDate,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'endTime': ?endTime,
      'recurrenceValues': ?recurrenceValues,
      'startDate': ?startDate,
      'startTime': ?startTime,
    };
  }

  factory SuppressionSchedule.fromMap(Map<String, dynamic> map) {
    return SuppressionSchedule(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceValues: (() { final guardedValue = map['recurrenceValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
