// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every month on the first Monday' or 'recur every 3 months on last Friday'.
class RelativeMonthlyScheduleResponse {
  /// Specifies on which day of the week the maintenance occurs.
  final pulumi.Input<String> dayOfWeek;
  /// Specifies the number of months between each set of occurrences.
  final pulumi.Input<int> intervalMonths;
  /// The week index. Specifies on which week of the month the dayOfWeek applies.
  final pulumi.Input<String> weekIndex;

  /// Creates a new [RelativeMonthlyScheduleResponse].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalMonths] Specifies the number of months between each set of occurrences.
  /// [weekIndex] The week index. Specifies on which week of the month the dayOfWeek applies.
  const RelativeMonthlyScheduleResponse({
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

  factory RelativeMonthlyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return RelativeMonthlyScheduleResponse(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      intervalMonths: pulumi.Input.fromValue(map['intervalMonths'] as int),
      weekIndex: pulumi.Input.fromValue(map['weekIndex'] as String),
    );
  }
}

