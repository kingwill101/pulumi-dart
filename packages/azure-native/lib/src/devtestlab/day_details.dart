// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a daily schedule.
class DayDetails {
  /// The time of day the schedule will occur.
  final String? time;

  /// Creates a new [DayDetails].
  /// [time] The time of day the schedule will occur.
  DayDetails({
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': ?time,
    };
  }

  factory DayDetails.fromMap(Map<String, dynamic> map) {
    return DayDetails(
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}

