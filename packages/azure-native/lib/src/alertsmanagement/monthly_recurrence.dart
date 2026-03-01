// ignore_for_file: unused_element, unnecessary_cast


/// Monthly recurrence object.
class MonthlyRecurrence {
  /// Specifies the values for monthly recurrence pattern.
  final List<int> daysOfMonth;
  /// End time for recurrence.
  final String? endTime;
  /// Specifies when the recurrence should be applied.
  /// Expected value is 'Monthly'.
  final String recurrenceType;
  /// Start time for recurrence.
  final String? startTime;

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
      daysOfMonth: (map['daysOfMonth'] as List).cast<int>(),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      recurrenceType: map['recurrenceType'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

