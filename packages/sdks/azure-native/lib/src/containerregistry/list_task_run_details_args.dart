// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_task_run_details_args_doc}
/// Arguments for listTaskRunDetails.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_task_run_details_args_doc}
class ListTaskRunDetailsArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the task run.
  final pulumi.Input<String> taskRunName;

  /// Creates a new [ListTaskRunDetailsArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [taskRunName] The name of the task run.
  const ListTaskRunDetailsArgs({
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

  factory ListTaskRunDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListTaskRunDetailsArgs(
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      taskRunName: pulumi.Input.fromValue(map['taskRunName'] as String),
    );
  }
}
