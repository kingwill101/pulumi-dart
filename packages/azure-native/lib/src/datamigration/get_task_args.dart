// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_task_args_doc}
/// Arguments for getTask.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_task_args_doc}
class GetTaskArgs {
  /// Expand the response
  final pulumi.Input<String>? expand;
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
  GetTaskArgs({
    String? expand,
    required String groupName,
    required String projectName,
    required String serviceName,
    required String taskName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      taskName = pulumi.Input.asInput<String>(taskName);

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
      expand: map['expand'] == null ? null : map['expand'] as String,
      groupName: map['groupName'] as String,
      projectName: map['projectName'] as String,
      serviceName: map['serviceName'] as String,
      taskName: map['taskName'] as String,
    );
  }
}

