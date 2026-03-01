// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_schedule.dart';

/// Definition of schedule parameters.
class SUCScheduleProperties {
  /// Gets or sets the advanced schedule.
  final AdvancedSchedule? advancedSchedule;
  /// Gets or sets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets or sets the end time of the schedule.
  final String? expiryTime;
  /// Gets or sets the expiry time's offset in minutes.
  final double? expiryTimeOffsetMinutes;
  /// Gets or sets the frequency of the schedule.
  final String? frequency;
  /// Gets or sets the interval of the schedule.
  final double? interval;
  /// Gets or sets a value indicating whether this schedule is enabled.
  final bool? isEnabled;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// Gets or sets the next run time of the schedule.
  final String? nextRun;
  /// Gets or sets the next run time's offset in minutes.
  final double? nextRunOffsetMinutes;
  /// Gets or sets the start time of the schedule.
  final String? startTime;
  /// Gets or sets the time zone of the schedule.
  final String? timeZone;

  /// Creates a new [SUCScheduleProperties].
  /// [advancedSchedule] Gets or sets the advanced schedule.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets or sets the end time of the schedule.
  /// [expiryTimeOffsetMinutes] Gets or sets the expiry time's offset in minutes.
  /// [frequency] Gets or sets the frequency of the schedule.
  /// [interval] Gets or sets the interval of the schedule.
  /// [isEnabled] Gets or sets a value indicating whether this schedule is enabled.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [nextRun] Gets or sets the next run time of the schedule.
  /// [nextRunOffsetMinutes] Gets or sets the next run time's offset in minutes.
  /// [startTime] Gets or sets the start time of the schedule.
  /// [timeZone] Gets or sets the time zone of the schedule.
  SUCScheduleProperties({
    this.advancedSchedule,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.expiryTimeOffsetMinutes,
    this.frequency,
    this.interval,
    this.isEnabled,
    this.lastModifiedTime,
    this.nextRun,
    this.nextRunOffsetMinutes,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSchedule': ?advancedSchedule == null ? null : advancedSchedule!.toMap(),
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'expiryTimeOffsetMinutes': ?expiryTimeOffsetMinutes,
      'frequency': ?frequency,
      'interval': ?interval,
      'isEnabled': ?isEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'nextRun': ?nextRun,
      'nextRunOffsetMinutes': ?nextRunOffsetMinutes,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory SUCScheduleProperties.fromMap(Map<String, dynamic> map) {
    return SUCScheduleProperties(
      advancedSchedule: map['advancedSchedule'] == null ? null : AdvancedSchedule.fromMap((map['advancedSchedule'] as Map).cast<String, dynamic>()),
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      expiryTimeOffsetMinutes: map['expiryTimeOffsetMinutes'] == null ? null : map['expiryTimeOffsetMinutes'] as double,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as double,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      nextRun: map['nextRun'] == null ? null : map['nextRun'] as String,
      nextRunOffsetMinutes: map['nextRunOffsetMinutes'] == null ? null : map['nextRunOffsetMinutes'] as double,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

