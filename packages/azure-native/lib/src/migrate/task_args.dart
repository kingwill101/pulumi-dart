// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_properties.dart';

/// {@template pulumi_migrate_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_migrate_task_args_doc}
class TaskArgs {
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<TaskProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Task ARM name
  final pulumi.Input<String>? taskName;

  /// Creates a new [TaskArgs].
  /// [projectName] Migrate Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [taskName] Task ARM name
  TaskArgs({
    required String projectName,
    TaskProperties? properties,
    required String resourceGroupName,
    String? taskName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<TaskProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      taskName = pulumi.Input.asOptionalInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<TaskProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'taskName': ?taskName,
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : TaskProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      taskName: map['taskName'] == null ? null : map['taskName'] as String,
    );
  }
}

