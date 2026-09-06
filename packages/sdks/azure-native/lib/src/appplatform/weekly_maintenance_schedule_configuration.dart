// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly planned maintenance
class WeeklyMaintenanceScheduleConfiguration {
  /// The day to run the maintenance job
  final pulumi.Input<dynamic> day;
  /// The frequency to run the maintenance job
  /// Expected value is 'Weekly'.
  final pulumi.Input<String> frequency;
  /// The hour to run the maintenance job
  final pulumi.Input<int> hour;

  /// Creates a new [WeeklyMaintenanceScheduleConfiguration].
  /// [day] The day to run the maintenance job
  /// [frequency] The frequency to run the maintenance job
  /// [hour] The hour to run the maintenance job
  const WeeklyMaintenanceScheduleConfiguration({
    required this.day,
    required this.frequency,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'frequency': frequency,
      'hour': hour,
    };
  }

  factory WeeklyMaintenanceScheduleConfiguration.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceScheduleConfiguration(
      day: pulumi.Input.fromValue(map['day']),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
    );
  }
}
