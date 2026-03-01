// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_schedule_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult {
  /// Gets or sets the advanced schedule.
  final AdvancedScheduleResponse? advancedSchedule;
  /// The Azure API version of the resource.
  final String azureApiVersion;
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
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets or sets the interval of the schedule.
  final dynamic interval;
  /// Gets or sets a value indicating whether this schedule is enabled.
  final bool? isEnabled;
  /// Gets or sets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Gets or sets the next run time of the schedule.
  final String? nextRun;
  /// Gets or sets the next run time's offset in minutes.
  final double? nextRunOffsetMinutes;
  /// Gets or sets the start time of the schedule.
  final String? startTime;
  /// Gets the start time's offset in minutes.
  final double startTimeOffsetMinutes;
  /// Gets or sets the time zone of the schedule.
  final String? timeZone;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetScheduleResult].
  /// [advancedSchedule] Gets or sets the advanced schedule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets or sets the end time of the schedule.
  /// [expiryTimeOffsetMinutes] Gets or sets the expiry time's offset in minutes.
  /// [frequency] Gets or sets the frequency of the schedule.
  /// [id] Fully qualified resource Id for the resource
  /// [interval] Gets or sets the interval of the schedule.
  /// [isEnabled] Gets or sets a value indicating whether this schedule is enabled.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [nextRun] Gets or sets the next run time of the schedule.
  /// [nextRunOffsetMinutes] Gets or sets the next run time's offset in minutes.
  /// [startTime] Gets or sets the start time of the schedule.
  /// [startTimeOffsetMinutes] Gets the start time's offset in minutes.
  /// [timeZone] Gets or sets the time zone of the schedule.
  /// [type] The type of the resource.
  GetScheduleResult({
    this.advancedSchedule,
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.expiryTimeOffsetMinutes,
    this.frequency,
    required this.id,
    this.interval,
    this.isEnabled,
    this.lastModifiedTime,
    required this.name,
    this.nextRun,
    this.nextRunOffsetMinutes,
    this.startTime,
    required this.startTimeOffsetMinutes,
    this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSchedule': ?advancedSchedule == null ? null : advancedSchedule!.toMap(),
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'expiryTimeOffsetMinutes': ?expiryTimeOffsetMinutes,
      'frequency': ?frequency,
      'id': id,
      'interval': ?interval,
      'isEnabled': ?isEnabled,
      'lastModifiedTime': ?lastModifiedTime,
      'name': name,
      'nextRun': ?nextRun,
      'nextRunOffsetMinutes': ?nextRunOffsetMinutes,
      'startTime': ?startTime,
      'startTimeOffsetMinutes': startTimeOffsetMinutes,
      'timeZone': ?timeZone,
      'type': type,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      advancedSchedule: map['advancedSchedule'] == null ? null : AdvancedScheduleResponse.fromMap((map['advancedSchedule'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      expiryTimeOffsetMinutes: map['expiryTimeOffsetMinutes'] == null ? null : map['expiryTimeOffsetMinutes'] as double,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      id: map['id'] as String,
      interval: map['interval'] == null ? null : map['interval'],
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      name: map['name'] as String,
      nextRun: map['nextRun'] == null ? null : map['nextRun'] as String,
      nextRunOffsetMinutes: map['nextRunOffsetMinutes'] == null ? null : map['nextRunOffsetMinutes'] as double,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      startTimeOffsetMinutes: map['startTimeOffsetMinutes'] as double,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      type: map['type'] as String,
    );
  }
}

