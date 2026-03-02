// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule.dart';

/// Definition of schedule parameters.
class SUCScheduleProperties {
  /// Gets or sets the advanced schedule.
  final pulumi.Input<AdvancedSchedule>? advancedSchedule;
  /// Gets or sets the creation time.
  final pulumi.Input<String>? creationTime;
  /// Gets or sets the description.
  final pulumi.Input<String>? description;
  /// Gets or sets the end time of the schedule.
  final pulumi.Input<String>? expiryTime;
  /// Gets or sets the expiry time's offset in minutes.
  final pulumi.Input<double>? expiryTimeOffsetMinutes;
  /// Gets or sets the frequency of the schedule.
  final pulumi.Input<String>? frequency;
  /// Gets or sets the interval of the schedule.
  final pulumi.Input<double>? interval;
  /// Gets or sets a value indicating whether this schedule is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// Gets or sets the last modified time.
  final pulumi.Input<String>? lastModifiedTime;
  /// Gets or sets the next run time of the schedule.
  final pulumi.Input<String>? nextRun;
  /// Gets or sets the next run time's offset in minutes.
  final pulumi.Input<double>? nextRunOffsetMinutes;
  /// Gets or sets the start time of the schedule.
  final pulumi.Input<String>? startTime;
  /// Gets or sets the time zone of the schedule.
  final pulumi.Input<String>? timeZone;

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
      'advancedSchedule': ?pulumi.Input.mapOptionalInputValue<AdvancedSchedule, Map<String, dynamic>>(advancedSchedule, (value) => value.toMap()),
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
      advancedSchedule: map['advancedSchedule'] == null ? null : (AdvancedSchedule.fromMap((map['advancedSchedule'] as Map).cast<String, dynamic>())).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      expiryTimeOffsetMinutes: map['expiryTimeOffsetMinutes'] == null ? null : (map['expiryTimeOffsetMinutes'] as double).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as double).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      nextRun: map['nextRun'] == null ? null : (map['nextRun'] as String).input(),
      nextRunOffsetMinutes: map['nextRunOffsetMinutes'] == null ? null : (map['nextRunOffsetMinutes'] as double).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

