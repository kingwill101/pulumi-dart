// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a daily schedule.
class DayDetailsResponse {
  /// The time of day the schedule will occur.
  final String? time;

  /// Creates a new [DayDetailsResponse].
  /// [time] The time of day the schedule will occur.
  DayDetailsResponse({
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
    };
  }

  factory DayDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DayDetailsResponse(
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

