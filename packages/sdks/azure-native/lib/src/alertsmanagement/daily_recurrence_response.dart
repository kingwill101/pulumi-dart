// ignore_for_file: unused_element, unnecessary_cast


/// Daily recurrence object.
class DailyRecurrenceResponse {
  /// End time for recurrence.
  final String endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Daily'.
  final String recurrenceType;
  /// Start time for recurrence.
  final String startTime;

  /// Creates a new [DailyRecurrenceResponse].
  /// [endTime] End time for recurrence.
  /// [recurrenceType] Specifies when the recurrence should be applied.
  /// [startTime] Start time for recurrence.
  DailyRecurrenceResponse({
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

  factory DailyRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DailyRecurrenceResponse(
      endTime: map['endTime'] as String,
      recurrenceType: map['recurrenceType'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

