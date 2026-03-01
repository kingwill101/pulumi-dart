// ignore_for_file: unused_element, unnecessary_cast


class WeeklyScheduleResponse {
  final List<String>? scheduleRunDays;
  /// List of times of day this schedule has to be run.
  final List<String>? scheduleRunTimes;

  /// Creates a new [WeeklyScheduleResponse].
  /// [scheduleRunDays] Optional.
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  WeeklyScheduleResponse({
    this.scheduleRunDays,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      scheduleRunDays: map['scheduleRunDays'] == null ? null : (map['scheduleRunDays'] as List).cast<String>(),
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : (map['scheduleRunTimes'] as List).cast<String>(),
    );
  }
}

