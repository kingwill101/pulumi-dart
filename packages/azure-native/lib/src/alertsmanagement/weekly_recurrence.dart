// ignore_for_file: unused_element, unnecessary_cast


/// Weekly recurrence object.
class WeeklyRecurrence {
  /// Specifies the values for weekly recurrence pattern.
  final List<String> daysOfWeek;
  /// End time for recurrence.
  final String? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Weekly'.
  final String recurrenceType;
  /// Start time for recurrence.
  final String? startTime;

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
      daysOfWeek: (map['daysOfWeek'] as List).cast<String>(),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      recurrenceType: map['recurrenceType'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

