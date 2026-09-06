// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_service_task_args_doc}
/// The set of arguments for ServiceTask.
/// {@endtemplate}
/// {@macro pulumi_datamigration_service_task_args_doc}
class ServiceTaskArgs {
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Custom task properties
  final pulumi.Input<dynamic>? properties;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Name of the Task
  final pulumi.Input<String?>? taskName;

  /// Creates a new [ServiceTaskArgs].
  /// [groupName] Name of the resource group
  /// [properties] Custom task properties
  /// [serviceName] Name of the service
  /// [taskName] Name of the Task
  const ServiceTaskArgs({
    required this.groupName,
    this.properties,
    required this.serviceName,
    this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'properties': ?properties,
      'serviceName': serviceName,
      'taskName': ?taskName,
    };
  }

  factory ServiceTaskArgs.fromMap(Map<String, dynamic> map) {
    return ServiceTaskArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
