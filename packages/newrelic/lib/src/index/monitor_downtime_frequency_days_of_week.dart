// ignore_for_file: unused_element, unnecessary_cast


class MonitorDowntimeFrequencyDaysOfWeek {
  /// An occurrence of the day selected within the month.
  final String ordinalDayOfMonth;
  /// The day of the week on which the Monitor Downtime would run.
  final String weekDay;

  /// Creates a new [MonitorDowntimeFrequencyDaysOfWeek].
  /// [ordinalDayOfMonth] An occurrence of the day selected within the month.
  /// [weekDay] The day of the week on which the Monitor Downtime would run.
  MonitorDowntimeFrequencyDaysOfWeek({
    required this.ordinalDayOfMonth,
    required this.weekDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ordinalDayOfMonth': ordinalDayOfMonth,
      'weekDay': weekDay,
    };
  }

  factory MonitorDowntimeFrequencyDaysOfWeek.fromMap(Map<String, dynamic> map) {
    return MonitorDowntimeFrequencyDaysOfWeek(
      ordinalDayOfMonth: map['ordinalDayOfMonth'] as String,
      weekDay: map['weekDay'] as String,
    );
  }
}

