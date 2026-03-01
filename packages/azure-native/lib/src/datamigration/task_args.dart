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
  TaskArgs({
    required String groupName,
    required String projectName,
    ConnectToMongoDbTaskProperties? properties,
    required String serviceName,
    String? taskName,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<ConnectToMongoDbTaskProperties>(properties),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      taskName = pulumi.Input.asOptionalInput<String>(taskName);

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
      groupName: map['groupName'] as String,
      projectName: map['projectName'] as String,
      properties: map['properties'] == null ? null : ConnectToMongoDbTaskProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] as String,
      taskName: map['taskName'] == null ? null : map['taskName'] as String,
    );
  }
}

