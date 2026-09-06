// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_task_args_doc}
class GetTaskArgs {
  /// Expand the response
  final pulumi.Input<String?>? expand;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Name of the Task
  final pulumi.Input<String> taskName;

  /// Creates a new [GetTaskArgs].
  /// [expand] Expand the response
  /// [groupName] Name of the resource group
  /// [projectName] Name of the project
  /// [serviceName] Name of the service
  /// [taskName] Name of the Task
  const GetTaskArgs({
    this.expand,
    required this.groupName,
    required this.projectName,
    required this.serviceName,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'groupName': groupName,
      'projectName': projectName,
      'serviceName': serviceName,
      'taskName': taskName,
    };
  }

  factory GetTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
    );
  }
}
