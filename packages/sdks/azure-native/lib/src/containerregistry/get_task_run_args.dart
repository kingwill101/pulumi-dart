// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_task_run_args_doc}
/// Arguments for getTaskRun.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_task_run_args_doc}
class GetTaskRunArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the task run.
  final pulumi.Input<String> taskRunName;

  /// Creates a new [GetTaskRunArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [taskRunName] The name of the task run.
  GetTaskRunArgs({
    required this.registryName,
    required this.resourceGroupName,
    required this.taskRunName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'taskRunName': taskRunName,
    };
  }

  factory GetTaskRunArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskRunArgs(
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      taskRunName: (map['taskRunName'] as String).input(),
    );
  }
}

