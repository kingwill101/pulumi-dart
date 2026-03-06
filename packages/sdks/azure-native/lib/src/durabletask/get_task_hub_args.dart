// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_durabletask_get_task_hub_args_doc}
/// Arguments for getTaskHub.
/// {@endtemplate}
/// {@macro pulumi_durabletask_get_task_hub_args_doc}
class GetTaskHubArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Scheduler
  final pulumi.Input<String> schedulerName;
  /// The name of the TaskHub
  final pulumi.Input<String> taskHubName;

  /// Creates a new [GetTaskHubArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  /// [taskHubName] The name of the TaskHub
  const GetTaskHubArgs({
    required this.resourceGroupName,
    required this.schedulerName,
    required this.taskHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'schedulerName': schedulerName,
      'taskHubName': taskHubName,
    };
  }

  factory GetTaskHubArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskHubArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schedulerName: pulumi.Input.fromValue(map['schedulerName'] as String),
      taskHubName: pulumi.Input.fromValue(map['taskHubName'] as String),
    );
  }
}

