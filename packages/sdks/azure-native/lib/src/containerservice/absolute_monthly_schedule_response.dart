// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every month on the 15th' or 'recur every 3 months on the 20th'.
class AbsoluteMonthlyScheduleResponse {
  /// The date of the month.
  final pulumi.Input<int> dayOfMonth;
  /// Specifies the number of months between each set of occurrences.
  final pulumi.Input<int> intervalMonths;

  /// Creates a new [AbsoluteMonthlyScheduleResponse].
  /// [dayOfMonth] The date of the month.
  /// [intervalMonths] Specifies the number of months between each set of occurrences.
  const AbsoluteMonthlyScheduleResponse({
    required this.dayOfMonth,
    required this.intervalMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'intervalMonths': intervalMonths,
    };
  }

  factory AbsoluteMonthlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return AbsoluteMonthlyScheduleResponse(
      dayOfMonth: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dayOfMonth'])),
      intervalMonths: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['intervalMonths'])),
    );
  }
}
