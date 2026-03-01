// ignore_for_file: unused_element, unnecessary_cast


/// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
class WeeklyScheduleResponse {
  /// Specifies on which day of the week the maintenance occurs.
  final String dayOfWeek;
  /// Specifies the number of weeks between each set of occurrences.
  final int intervalWeeks;

  /// Creates a new [WeeklyScheduleResponse].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalWeeks] Specifies the number of weeks between each set of occurrences.
  WeeklyScheduleResponse({
    required this.dayOfWeek,
    required this.intervalWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'intervalWeeks': intervalWeeks,
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      dayOfWeek: map['dayOfWeek'] as String,
      intervalWeeks: map['intervalWeeks'] as int,
    );
  }
}

