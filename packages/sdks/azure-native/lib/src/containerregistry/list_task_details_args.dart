// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_list_task_details_args_doc}
/// Arguments for listTaskDetails.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_list_task_details_args_doc}
class ListTaskDetailsArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the container registry task.
  final pulumi.Input<String> taskName;

  /// Creates a new [ListTaskDetailsArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  /// [taskName] The name of the container registry task.
  ListTaskDetailsArgs({
    required this.registryName,
    required this.resourceGroupName,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'taskName': taskName,
    };
  }

  factory ListTaskDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListTaskDetailsArgs(
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      taskName: (map['taskName'] as String).input(),
    );
  }
}

