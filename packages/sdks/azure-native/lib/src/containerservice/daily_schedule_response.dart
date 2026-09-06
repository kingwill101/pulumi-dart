// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every day' or 'recur every 3 days'.
class DailyScheduleResponse {
  /// Specifies the number of days between each set of occurrences.
  final pulumi.Input<int> intervalDays;

  /// Creates a new [DailyScheduleResponse].
  /// [intervalDays] Specifies the number of days between each set of occurrences.
  const DailyScheduleResponse({
    required this.intervalDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalDays': intervalDays,
    };
  }

  factory DailyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return DailyScheduleResponse(
      intervalDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['intervalDays'])),
    );
  }
}
