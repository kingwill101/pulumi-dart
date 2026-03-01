// ignore_for_file: unused_element, unnecessary_cast

import 'software_update_configuration_schedule_monthly_occurrence.dart';

class SoftwareUpdateConfigurationSchedule {
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  final List<int>? advancedMonthDays;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  final List<String>? advancedWeekDays;
  final String? creationTime;
  /// A description for this Schedule.
  final String? description;
  /// The end time of the schedule.
  final String? expiryTime;
  /// The time offset in minutes for the expiry time.
  final double? expiryTimeOffsetMinutes;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  final String frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month`.
  final int? interval;
  /// Whether the schedule is enabled. Defaults to `true`.
  final bool? isEnabled;
  final String? lastModifiedTime;
  /// List of `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields as defined below.
  final SoftwareUpdateConfigurationScheduleMonthlyOccurrence? monthlyOccurrence;
  final String? nextRun;
  /// The time offset in minutes for the next run time.
  final double? nextRunOffsetMinutes;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  final String? startTime;
  /// The time offset in minutes for the start time.
  final double? startTimeOffsetMinutes;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  final String? timeZone;

  /// Creates a new [SoftwareUpdateConfigurationSchedule].
  /// [advancedMonthDays] List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  /// [advancedWeekDays] List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values include `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`.
  /// [creationTime] Optional.
  /// [description] A description for this Schedule.
  /// [expiryTime] The end time of the schedule.
  /// [expiryTimeOffsetMinutes] The time offset in minutes for the expiry time.
  /// [frequency] The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  /// [interval] The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month`.
  /// [isEnabled] Whether the schedule is enabled. Defaults to `true`.
  /// [lastModifiedTime] Optional.
  /// [monthlyOccurrence] List of `monthly_occurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthly_occurrence` block supports fields as defined below.
  /// [nextRun] Optional.
  /// [nextRunOffsetMinutes] The time offset in minutes for the next run time.
  /// [startTime] Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  /// [startTimeOffsetMinutes] The time offset in minutes for the start time.
  /// [timeZone] The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
  SoftwareUpdateConfigurationSchedule({
    this.advancedMonthDays,
    this.advancedWeekDays,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.expiryTimeOffsetMinutes,
    required this.frequency,
    this.interval,
    this.isEnabled,
    this.lastModifiedTime,
    this.monthlyOccurrence,
    this.nextRun,
    this.nextRunOffsetMinutes,
    this.startTime,
    this.startTimeOffsetMinutes,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedMonthDays': ?advancedMonthDays,
      'advancedWeekDays': ?advancedWeekDays,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'expiryTimeOffsetMinutes': ?expiryTimeOffsetMinutes,
      'frequency': frequency,
      'interval': ?interval,
      'isEnabled': ?isEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'monthlyOccurrence': ?monthlyOccurrence == null ? null : monthlyOccurrence!.toMap(),
      'nextRun': ?nextRun,
      'nextRunOffsetMinutes': ?nextRunOffsetMinutes,
      'startTime': ?startTime,
      'startTimeOffsetMinutes': ?startTimeOffsetMinutes,
      'timeZone': ?timeZone,
    };
  }

  factory SoftwareUpdateConfigurationSchedule.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationSchedule(
      advancedMonthDays: map['advancedMonthDays'] == null ? null : (map['advancedMonthDays'] as List).cast<int>(),
      advancedWeekDays: map['advancedWeekDays'] == null ? null : (map['advancedWeekDays'] as List).cast<String>(),
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      expiryTimeOffsetMinutes: map['expiryTimeOffsetMinutes'] == null ? null : map['expiryTimeOffsetMinutes'] as double,
      frequency: map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : SoftwareUpdateConfigurationScheduleMonthlyOccurrence.fromMap((map['monthlyOccurrence'] as Map).cast<String, dynamic>()),
      nextRun: map['nextRun'] == null ? null : map['nextRun'] as String,
      nextRunOffsetMinutes: map['nextRunOffsetMinutes'] == null ? null : map['nextRunOffsetMinutes'] as double,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      startTimeOffsetMinutes: map['startTimeOffsetMinutes'] == null ? null : map['startTimeOffsetMinutes'] as double,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

