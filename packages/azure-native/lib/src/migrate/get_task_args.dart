// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_task_args_doc}
class GetTaskArgs {
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Task ARM name
  final pulumi.Input<String> taskName;

  /// Creates a new [GetTaskArgs].
  /// [projectName] Migrate Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [taskName] Task ARM name
  GetTaskArgs({
    required String projectName,
    required String resourceGroupName,
    required String taskName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      taskName = pulumi.Input.asInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'taskName': taskName,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      taskName: map['taskName'] as String,
    );
  }
}

