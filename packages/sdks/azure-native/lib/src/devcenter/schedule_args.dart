// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_devcenter_schedule_args_doc}
class ScheduleArgs {
  /// The frequency of this scheduled task.
  final pulumi.Input<String> frequency;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the pool.
  final pulumi.Input<String> poolName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schedule that uniquely identifies it.
  final pulumi.Input<String>? scheduleName;
  /// Indicates whether or not this scheduled task is enabled.
  final pulumi.Input<String>? state;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The target time to trigger the action. The format is HH:MM.
  final pulumi.Input<String> time;
  /// The IANA timezone id at which the schedule should execute.
  final pulumi.Input<String> timeZone;
  /// The maximum number of resources to return from the operation. Example: '$top=10'.
  final pulumi.Input<int>? top;
  /// Supported type this scheduled task represents.
  final pulumi.Input<String> type;

  /// Creates a new [ScheduleArgs].
  /// [frequency] The frequency of this scheduled task.
  /// [location] The geo-location where the resource lives
  /// [poolName] Name of the pool.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduleName] The name of the schedule that uniquely identifies it.
  /// [state] Indicates whether or not this scheduled task is enabled.
  /// [tags] Resource tags.
  /// [time] The target time to trigger the action. The format is HH:MM.
  /// [timeZone] The IANA timezone id at which the schedule should execute.
  /// [top] The maximum number of resources to return from the operation. Example: '$top=10'.
  /// [type] Supported type this scheduled task represents.
  const ScheduleArgs({
    required this.frequency,
    this.location,
    required this.poolName,
    required this.projectName,
    required this.resourceGroupName,
    this.scheduleName,
    this.state,
    this.tags,
    required this.time,
    required this.timeZone,
    this.top,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'location': ?location,
      'poolName': poolName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'scheduleName': ?scheduleName,
      'state': ?state,
      'tags': ?tags,
      'time': time,
      'timeZone': timeZone,
      'top': ?top,
      'type': type,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      time: pulumi.Input.fromValue(map['time'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
