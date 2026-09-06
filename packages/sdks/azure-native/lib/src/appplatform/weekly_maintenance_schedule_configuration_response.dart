// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Weekly planned maintenance
class WeeklyMaintenanceScheduleConfigurationResponse {
  /// The day to run the maintenance job
  final pulumi.Input<String> day;
  /// The duration time to run the maintenance job, specified in ISO8601 format, e.g. PT8H
  final pulumi.Input<String> duration;
  /// The frequency to run the maintenance job
  /// Expected value is 'Weekly'.
  final pulumi.Input<String> frequency;
  /// The hour to run the maintenance job
  final pulumi.Input<int> hour;

  /// Creates a new [WeeklyMaintenanceScheduleConfigurationResponse].
  /// [day] The day to run the maintenance job
  /// [duration] The duration time to run the maintenance job, specified in ISO8601 format, e.g. PT8H
  /// [frequency] The frequency to run the maintenance job
  /// [hour] The hour to run the maintenance job
  const WeeklyMaintenanceScheduleConfigurationResponse({
    required this.day,
    required this.duration,
    required this.frequency,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'frequency': frequency,
      'hour': hour,
    };
  }

  factory WeeklyMaintenanceScheduleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceScheduleConfigurationResponse(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
    );
  }
}
