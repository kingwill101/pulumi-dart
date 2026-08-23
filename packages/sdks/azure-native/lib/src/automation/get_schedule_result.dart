// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_schedule_response.dart';
import 'system_data_response.dart';

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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
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
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Gets or sets the time zone of the schedule.
  final String? timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetScheduleResult].
  /// [advancedSchedule] Gets or sets the advanced schedule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets or sets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets or sets the end time of the schedule.
  /// [expiryTimeOffsetMinutes] Gets or sets the expiry time's offset in minutes.
  /// [frequency] Gets or sets the frequency of the schedule.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interval] Gets or sets the interval of the schedule.
  /// [isEnabled] Gets or sets a value indicating whether this schedule is enabled.
  /// [lastModifiedTime] Gets or sets the last modified time.
  /// [name] The name of the resource
  /// [nextRun] Gets or sets the next run time of the schedule.
  /// [nextRunOffsetMinutes] Gets or sets the next run time's offset in minutes.
  /// [startTime] Gets or sets the start time of the schedule.
  /// [startTimeOffsetMinutes] Gets the start time's offset in minutes.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeZone] Gets or sets the time zone of the schedule.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetScheduleResult({
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
    required this.systemData,
    this.timeZone,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSchedule': ?advancedSchedule?.toMap(),
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
      'systemData': systemData.toMap(),
      'timeZone': ?timeZone,
      'type': type,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      advancedSchedule: (() { final guardedValue = map['advancedSchedule']; if (guardedValue == null) return null; return AdvancedScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTimeOffsetMinutes: (() { final guardedValue = map['expiryTimeOffsetMinutes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return guardedValue; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      nextRun: (() { final guardedValue = map['nextRun']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextRunOffsetMinutes: (() { final guardedValue = map['nextRunOffsetMinutes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTimeOffsetMinutes: map['startTimeOffsetMinutes'] as double,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}
