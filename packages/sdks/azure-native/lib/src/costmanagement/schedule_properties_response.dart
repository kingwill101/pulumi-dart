// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the schedule.
class SchedulePropertiesResponse {
  /// UTC day on which cost analysis data will be emailed. Must be between 1 and 31. This property is applicable when frequency is Monthly and overrides weeksOfMonth or daysOfWeek.
  final pulumi.Input<int>? dayOfMonth;

  /// Day names in english on which cost analysis data will be emailed. This property is applicable when frequency is Weekly or Monthly.
  final pulumi.Input<List<String>>? daysOfWeek;

  /// The end date and time of the scheduled action (UTC).
  final pulumi.Input<String> endDate;

  /// Frequency of the schedule.
  final pulumi.Input<String> frequency;

  /// UTC time at which cost analysis data will be emailed.
  final pulumi.Input<int>? hourOfDay;

  /// The start date and time of the scheduled action (UTC).
  final pulumi.Input<String> startDate;

  /// Weeks in which cost analysis data will be emailed. This property is applicable when frequency is Monthly and used in combination with daysOfWeek.
  final pulumi.Input<List<String>>? weeksOfMonth;

  /// Creates a new [SchedulePropertiesResponse].
  /// [dayOfMonth] UTC day on which cost analysis data will be emailed. Must be between 1 and 31. This property is applicable when frequency is Monthly and overrides weeksOfMonth or daysOfWeek.
  /// [daysOfWeek] Day names in english on which cost analysis data will be emailed. This property is applicable when frequency is Weekly or Monthly.
  /// [endDate] The end date and time of the scheduled action (UTC).
  /// [frequency] Frequency of the schedule.
  /// [hourOfDay] UTC time at which cost analysis data will be emailed.
  /// [startDate] The start date and time of the scheduled action (UTC).
  /// [weeksOfMonth] Weeks in which cost analysis data will be emailed. This property is applicable when frequency is Monthly and used in combination with daysOfWeek.
  SchedulePropertiesResponse({
    this.dayOfMonth,
    this.daysOfWeek,
    required this.endDate,
    required this.frequency,
    this.hourOfDay,
    required this.startDate,
    this.weeksOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': ?dayOfMonth,
      'daysOfWeek': ?daysOfWeek,
      'endDate': endDate,
      'frequency': frequency,
      'hourOfDay': ?hourOfDay,
      'startDate': startDate,
      'weeksOfMonth': ?weeksOfMonth,
    };
  }

  factory SchedulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulePropertiesResponse(
      dayOfMonth: (() {
        final guardedValue = map['dayOfMonth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      daysOfWeek: (() {
        final guardedValue = map['daysOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      hourOfDay: (() {
        final guardedValue = map['hourOfDay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startDate: pulumi.Input.fromValue(map['startDate'] as String),
      weeksOfMonth: (() {
        final guardedValue = map['weeksOfMonth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
