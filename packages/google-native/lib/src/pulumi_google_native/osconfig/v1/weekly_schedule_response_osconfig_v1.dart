// ignore_for_file: unused_element, unnecessary_cast

/// Represents a weekly schedule.
class WeeklyScheduleResponseOsconfigV1 {
  /// Day of the week.
  final String dayOfWeek;

  WeeklyScheduleResponseOsconfigV1({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeek'] = dayOfWeek;
    return map;
  }

  factory WeeklyScheduleResponseOsconfigV1.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponseOsconfigV1(
      dayOfWeek: map['dayOfWeek'] as String,
    );
  }
}
