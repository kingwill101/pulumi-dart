// ignore_for_file: unused_element, unnecessary_cast


/// Schedule for a given suppression configuration.
class SuppressionScheduleResponse {
  /// End date for suppression
  final String? endDate;
  /// End date for suppression
  final String? endTime;
  /// Specifies the values for recurrence pattern
  final List<int>? recurrenceValues;
  /// Start date for suppression
  final String? startDate;
  /// Start time for suppression
  final String? startTime;

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
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      recurrenceValues: map['recurrenceValues'] == null ? null : (map['recurrenceValues'] as List).cast<int>(),
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

