// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a weekly schedule.
class WeekDetailsResponse {
  /// The time of the day the schedule will occur.
  final String? time;
  /// The days of the week for which the schedule is set (e.g. Sunday, Monday, Tuesday, etc.).
  final List<String>? weekdays;

  /// Creates a new [WeekDetailsResponse].
  /// [time] The time of the day the schedule will occur.
  /// [weekdays] The days of the week for which the schedule is set (e.g. Sunday, Monday, Tuesday, etc.).
  WeekDetailsResponse({
    this.time,
    this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
      'weekdays': ?weekdays,
    };
  }

  factory WeekDetailsResponse.fromMap(Map<String, dynamic> map) {
    return WeekDetailsResponse(
      time: map['time'] == null ? null : map['time'] as String,
      weekdays: map['weekdays'] == null ? null : (map['weekdays'] as List).cast<String>(),
    );
  }
}

