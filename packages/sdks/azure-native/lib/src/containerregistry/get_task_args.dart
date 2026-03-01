// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_task_args_doc}
class GetTaskArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the container registry task.
  final pulumi.Input<String> taskName;

  /// Creates a new [GetTaskArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [taskName] The name of the container registry task.
  GetTaskArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> taskName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      taskName = pulumi.Input.asInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'taskName': taskName,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      taskName: pulumi.Output.create<String>(map['taskName'] as String),
    );
  }
}

