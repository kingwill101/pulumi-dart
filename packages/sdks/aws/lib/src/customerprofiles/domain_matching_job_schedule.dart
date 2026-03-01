// ignore_for_file: unused_element, unnecessary_cast


class DomainMatchingJobSchedule {
  /// The day when the Identity Resolution Job should run every week.
  final String dayOfTheWeek;
  /// The time when the Identity Resolution Job should run every week.
  final String time;

  /// Creates a new [DomainMatchingJobSchedule].
  /// [dayOfTheWeek] The day when the Identity Resolution Job should run every week.
  /// [time] The time when the Identity Resolution Job should run every week.
  DomainMatchingJobSchedule({
    required this.dayOfTheWeek,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfTheWeek': dayOfTheWeek,
      'time': time,
    };
  }

  factory DomainMatchingJobSchedule.fromMap(Map<String, dynamic> map) {
    return DomainMatchingJobSchedule(
      dayOfTheWeek: map['dayOfTheWeek'] as String,
      time: map['time'] as String,
    );
  }
}

