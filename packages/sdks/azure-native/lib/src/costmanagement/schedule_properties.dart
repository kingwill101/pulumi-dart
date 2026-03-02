// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the schedule.
class ScheduleProperties {
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

  /// Creates a new [ScheduleProperties].
  /// [dayOfMonth] UTC day on which cost analysis data will be emailed. Must be between 1 and 31. This property is applicable when frequency is Monthly and overrides weeksOfMonth or daysOfWeek.
  /// [daysOfWeek] Day names in english on which cost analysis data will be emailed. This property is applicable when frequency is Weekly or Monthly.
  /// [endDate] The end date and time of the scheduled action (UTC).
  /// [frequency] Frequency of the schedule.
  /// [hourOfDay] UTC time at which cost analysis data will be emailed.
  /// [startDate] The start date and time of the scheduled action (UTC).
  /// [weeksOfMonth] Weeks in which cost analysis data will be emailed. This property is applicable when frequency is Monthly and used in combination with daysOfWeek.
  ScheduleProperties({
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

  factory ScheduleProperties.fromMap(Map<String, dynamic> map) {
    return ScheduleProperties(
      dayOfMonth: map['dayOfMonth'] == null ? null : (map['dayOfMonth'] as int).input(),
      daysOfWeek: map['daysOfWeek'] == null ? null : ((map['daysOfWeek'] as List).cast<String>()).input(),
      endDate: (map['endDate'] as String).input(),
      frequency: (map['frequency'] as String).input(),
      hourOfDay: map['hourOfDay'] == null ? null : (map['hourOfDay'] as int).input(),
      startDate: (map['startDate'] as String).input(),
      weeksOfMonth: map['weeksOfMonth'] == null ? null : ((map['weeksOfMonth'] as List).cast<String>()).input(),
    );
  }
}

