// ignore_for_file: unused_element, unnecessary_cast


/// Represents a weekly schedule.
class WeeklyScheduleResponse {
  /// Day of the week.
  final String dayOfWeek;

  /// Creates a new [WeeklyScheduleResponse].
  /// [dayOfWeek] Day of the week.
  WeeklyScheduleResponse({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      dayOfWeek: map['dayOfWeek'] as String,
    );
  }
}

