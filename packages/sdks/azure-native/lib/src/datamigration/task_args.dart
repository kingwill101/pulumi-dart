// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_mongo_db_task_properties.dart';

/// {@template pulumi_datamigration_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_datamigration_task_args_doc}
class TaskArgs {
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the project
  final pulumi.Input<String> projectName;
  /// Custom task properties
  final pulumi.Input<ConnectToMongoDbTaskProperties>? properties;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Name of the Task
  final pulumi.Input<String>? taskName;

  /// Creates a new [TaskArgs].
  /// [groupName] Name of the resource group
  /// [projectName] Name of the project
  /// [properties] Custom task properties
  /// [serviceName] Name of the service
  /// [taskName] Name of the Task
  const TaskArgs({
    required this.groupName,
    required this.projectName,
    this.properties,
    required this.serviceName,
    this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectToMongoDbTaskProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceName': serviceName,
      'taskName': ?taskName,
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectToMongoDbTaskProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
