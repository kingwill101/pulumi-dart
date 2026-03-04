// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerMaintenanceWindowStartTime {
  /// Day of the week, e.g., `MONDAY`, `TUESDAY`, or `WEDNESDAY`.
  final pulumi.Input<String> dayOfWeek;

  /// Time, in 24-hour format, e.g., `02:00`.
  final pulumi.Input<String> timeOfDay;

  /// Time zone in either the Country/City format or the UTC offset format, e.g., `CET`.
  final pulumi.Input<String> timeZone;

  /// Creates a new [BrokerMaintenanceWindowStartTime].
  /// [dayOfWeek] Day of the week, e.g., `MONDAY`, `TUESDAY`, or `WEDNESDAY`.
  /// [timeOfDay] Time, in 24-hour format, e.g., `02:00`.
  /// [timeZone] Time zone in either the Country/City format or the UTC offset format, e.g., `CET`.
  BrokerMaintenanceWindowStartTime({
    required this.dayOfWeek,
    required this.timeOfDay,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'timeOfDay': timeOfDay,
      'timeZone': timeZone,
    };
  }

  factory BrokerMaintenanceWindowStartTime.fromMap(Map<String, dynamic> map) {
    return BrokerMaintenanceWindowStartTime(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      timeOfDay: pulumi.Input.fromValue(map['timeOfDay'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
