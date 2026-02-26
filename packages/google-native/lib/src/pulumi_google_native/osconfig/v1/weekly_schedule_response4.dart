// ignore_for_file: unused_element, unnecessary_cast

/// Represents a weekly schedule.
class WeeklyScheduleResponse4 {
  /// Day of the week.
  final String dayOfWeek;

  WeeklyScheduleResponse4({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    return map;
  }

  factory WeeklyScheduleResponse4.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse4(
      dayOfWeek: map['dayOfWeek'] as String,
    );
  }
}
