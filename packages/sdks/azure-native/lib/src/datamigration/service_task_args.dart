// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_mongo_db_task_properties.dart';

/// {@template pulumi_datamigration_service_task_args_doc}
/// The set of arguments for ServiceTask.
/// {@endtemplate}
/// {@macro pulumi_datamigration_service_task_args_doc}
class ServiceTaskArgs {
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Custom task properties
  final pulumi.Input<ConnectToMongoDbTaskProperties>? properties;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Name of the Task
  final pulumi.Input<String>? taskName;

  /// Creates a new [ServiceTaskArgs].
  /// [groupName] Name of the resource group
  /// [properties] Custom task properties
  /// [serviceName] Name of the service
  /// [taskName] Name of the Task
  ServiceTaskArgs({
    required this.groupName,
    this.properties,
    required this.serviceName,
    this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectToMongoDbTaskProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceName': serviceName,
      'taskName': ?taskName,
    };
  }

  factory ServiceTaskArgs.fromMap(Map<String, dynamic> map) {
    return ServiceTaskArgs(
      groupName: (map['groupName'] as String).input(),
      properties: map['properties'] == null ? null : (ConnectToMongoDbTaskProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      serviceName: (map['serviceName'] as String).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
    );
  }
}

