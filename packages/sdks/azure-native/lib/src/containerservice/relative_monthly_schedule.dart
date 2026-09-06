// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
class RelativeMonthlySchedule {
  /// Specifies on which day of the week the maintenance occurs.
  final pulumi.Input<dynamic> dayOfWeek;
  /// Specifies the number of months between each set of occurrences.
  final pulumi.Input<int> intervalMonths;
  /// The week index. Specifies on which week of the month the dayOfWeek applies.
  final pulumi.Input<dynamic> weekIndex;

  /// Creates a new [RelativeMonthlySchedule].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalMonths] Specifies the number of months between each set of occurrences.
  /// [weekIndex] The week index. Specifies on which week of the month the dayOfWeek applies.
  const RelativeMonthlySchedule({
    required this.dayOfWeek,
    required this.intervalMonths,
    required this.weekIndex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'intervalMonths': intervalMonths,
      'weekIndex': weekIndex,
    };
  }

  factory RelativeMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return RelativeMonthlySchedule(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek']),
      intervalMonths: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['intervalMonths'])),
      weekIndex: pulumi.Input.fromValue(map['weekIndex']),
    );
  }
}
