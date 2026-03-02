// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for a given suppression configuration.
class SuppressionScheduleResponse {
  /// End date for suppression
  final pulumi.Input<String>? endDate;
  /// End date for suppression
  final pulumi.Input<String>? endTime;
  /// Specifies the values for recurrence pattern
  final pulumi.Input<List<int>>? recurrenceValues;
  /// Start date for suppression
  final pulumi.Input<String>? startDate;
  /// Start time for suppression
  final pulumi.Input<String>? startTime;

  /// Creates a new [SuppressionScheduleResponse].
  /// [endDate] End date for suppression
  /// [endTime] End date for suppression
  /// [recurrenceValues] Specifies the values for recurrence pattern
  /// [startDate] Start date for suppression
  /// [startTime] Start time for suppression
  SuppressionScheduleResponse({
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

  factory SuppressionScheduleResponse.fromMap(Map<String, dynamic> map) {
    return SuppressionScheduleResponse(
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      recurrenceValues: map['recurrenceValues'] == null ? null : ((map['recurrenceValues'] as List).cast<int>()).input(),
      startDate: map['startDate'] == null ? null : (map['startDate'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

