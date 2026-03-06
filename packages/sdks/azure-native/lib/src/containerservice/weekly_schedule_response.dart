// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every Monday' or 'recur every 3 weeks on Wednesday'.
class WeeklyScheduleResponse {
  /// Specifies on which day of the week the maintenance occurs.
  final pulumi.Input<String> dayOfWeek;
  /// Specifies the number of weeks between each set of occurrences.
  final pulumi.Input<int> intervalWeeks;

  /// Creates a new [WeeklyScheduleResponse].
  /// [dayOfWeek] Specifies on which day of the week the maintenance occurs.
  /// [intervalWeeks] Specifies the number of weeks between each set of occurrences.
  const WeeklyScheduleResponse({
    required this.dayOfWeek,
    required this.intervalWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'intervalWeeks': intervalWeeks,
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      intervalWeeks: pulumi.Input.fromValue(map['intervalWeeks'] as int),
    );
  }
}

