// ignore_for_file: unused_element, unnecessary_cast

/// Represents a weekly schedule.
class WeeklyScheduleResponseOsconfigV1beta {
  /// Day of the week.
  final String dayOfWeek;

  /// Creates a new [WeeklyScheduleResponseOsconfigV1beta].
  /// [dayOfWeek] Day of the week.
  WeeklyScheduleResponseOsconfigV1beta({required this.dayOfWeek});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dayOfWeek': dayOfWeek};
  }

  factory WeeklyScheduleResponseOsconfigV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return WeeklyScheduleResponseOsconfigV1beta(
      dayOfWeek: map['dayOfWeek'] as String,
    );
  }
}
