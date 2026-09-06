// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
class WeeklySchedule {
  /// Specifies on which day of the week the maintenance occurs.
  final pulumi.Input<dynamic> dayOfWeek;
  /// Specifies the number of weeks between each set of occurrences.
  final pulumi.Input<int> intervalWeeks;

  /// Creates a new [WeeklySchedule].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalWeeks] Specifies the number of weeks between each set of occurrences.
  const WeeklySchedule({
    required this.dayOfWeek,
    required this.intervalWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'intervalWeeks': intervalWeeks,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek']),
      intervalWeeks: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['intervalWeeks'])),
    );
  }
}
