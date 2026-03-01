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
  ListTaskRunDetailsArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> taskRunName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      taskRunName = pulumi.Input.asInput<String>(taskRunName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'taskRunName': taskRunName,
    };
  }

  factory ListTaskRunDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListTaskRunDetailsArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      taskRunName: pulumi.Output.create<String>(map['taskRunName'] as String),
    );
  }
}

