// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule_response.dart';

/// Definition of schedule parameters.
class SUCSchedulePropertiesResponse {
  /// Gets or sets the advanced schedule.
  final pulumi.Input<AdvancedScheduleResponse?>? advancedSchedule;
  /// Gets or sets the creation time.
  final pulumi.Input<String?>? creationTime;
  /// Gets or sets the description.
  final pulumi.Input<String?>? description;
  /// Gets or sets the end time of the schedule.
  final pulumi.Input<String?>? expiryTime;
  /// Gets or sets the expiry time's offset in minutes.
  final pulumi.Input<double?>? expiryTimeOffsetMinutes;
  /// Gets or sets the frequency of the schedule.
  final pulumi.Input<String?>? frequency;
  /// Gets or sets the interval of the schedule.
  final pulumi.Input<double?>? interval;
  /// Gets or sets a value indicating whether this schedule is enabled.
  final pulumi.Input<bool?>? isEnabled;
  /// Gets or sets the last modified time.
  final pulumi.Input<String?>? lastModifiedTime;
  /// Gets or sets the next run time of the schedule.
  final pulumi.Input<String?>? nextRun;
  /// Gets or sets the next run time's offset in minutes.
  final pulumi.Input<double?>? nextRunOffsetMinutes;
  /// Gets or sets the start time of the schedule.
  final pulumi.Input<String?>? startTime;
  /// Gets the start time's offset in minutes.
  final pulumi.Input<double> startTimeOffsetMinutes;
  /// Gets or sets the time zone of the schedule.
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [SUCSchedulePropertiesResponse].
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
  /// [startTimeOffsetMinutes] Gets the start time's offset in minutes.
  /// [timeZone] Gets or sets the time zone of the schedule.
  const SUCSchedulePropertiesResponse({
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
    required this.startTimeOffsetMinutes,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSchedule': ?pulumi.Input.mapOptionalInputValue<AdvancedScheduleResponse, Map<String, dynamic>>(advancedSchedule, (value) => value.toMap()),
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
      'startTimeOffsetMinutes': startTimeOffsetMinutes,
      'timeZone': ?timeZone,
    };
  }

  factory SUCSchedulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SUCSchedulePropertiesResponse(
      advancedSchedule: (() { final guardedValue = map['advancedSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTimeOffsetMinutes: (() { final guardedValue = map['expiryTimeOffsetMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextRun: (() { final guardedValue = map['nextRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextRunOffsetMinutes: (() { final guardedValue = map['nextRunOffsetMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeOffsetMinutes: pulumi.Input.fromValue((map['startTimeOffsetMinutes'] as num).toDouble()),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
