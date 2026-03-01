// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_durabletask_task_hub_args_doc}
/// The set of arguments for TaskHub.
/// {@endtemplate}
/// {@macro pulumi_durabletask_task_hub_args_doc}
class TaskHubArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;
  /// The name of the TaskHub
  final pulumi.Input<String>? taskHubName;

  /// Creates a new [TaskHubArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  /// [taskHubName] The name of the TaskHub
  TaskHubArgs({
    required String resourceGroupName,
    required String schedulerName,
    String? taskHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedulerName = pulumi.Input.asInput<String>(schedulerName),
      taskHubName = pulumi.Input.asOptionalInput<String>(taskHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
      'taskHubName': ?taskHubName,
    };
  }

  factory TaskHubArgs.fromMap(Map<String, dynamic> map) {
    return TaskHubArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      schedulerName: map['schedulerName'] as String,
      taskHubName: map['taskHubName'] == null ? null : map['taskHubName'] as String,
    );
  }
}

