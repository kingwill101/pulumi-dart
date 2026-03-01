// ignore_for_file: unused_element, unnecessary_cast


class ScheduleHourlyRecurrence {
  /// Minutes of the hour the schedule will run.
  final int minute;

  /// Creates a new [ScheduleHourlyRecurrence].
  /// [minute] Minutes of the hour the schedule will run.
  ScheduleHourlyRecurrence({
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': minute,
    };
  }

  factory ScheduleHourlyRecurrence.fromMap(Map<String, dynamic> map) {
    return ScheduleHourlyRecurrence(
      minute: map['minute'] as int,
    );
  }
}

