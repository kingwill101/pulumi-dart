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
  ScheduleArgs({
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
      frequency: (map['frequency'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scheduleName: map['scheduleName'] == null ? null : (map['scheduleName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      time: (map['time'] as String).input(),
      timeZone: (map['timeZone'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

