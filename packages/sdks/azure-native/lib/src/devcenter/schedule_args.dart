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
    required pulumi.Output<String> frequency,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scheduleName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> time,
    required pulumi.Output<String> timeZone,
    pulumi.Output<int>? top,
    required pulumi.Output<String> type,
  }) :
      frequency = pulumi.Input.asInput<String>(frequency),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scheduleName = pulumi.Input.asOptionalInput<String>(scheduleName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      time = pulumi.Input.asInput<String>(time),
      timeZone = pulumi.Input.asInput<String>(timeZone),
      top = pulumi.Input.asOptionalInput<int>(top),
      type = pulumi.Input.asInput<String>(type);

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
      frequency: pulumi.Output.create<String>(map['frequency'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scheduleName: map['scheduleName'] == null ? null : pulumi.Output.create<String>(map['scheduleName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      time: pulumi.Output.create<String>(map['time'] as String),
      timeZone: pulumi.Output.create<String>(map['timeZone'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

