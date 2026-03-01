// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_service_task_args_doc}
/// Arguments for getServiceTask.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_service_task_args_doc}
class GetServiceTaskArgs {
  /// Expand the response
  final pulumi.Input<String>? expand;
  /// Name of the resource group
  final pulumi.Input<String> groupName;
  /// Name of the service
  final pulumi.Input<String> serviceName;
  /// Name of the Task
  final pulumi.Input<String> taskName;

  /// Creates a new [GetServiceTaskArgs].
  /// [expand] Expand the response
  /// [groupName] Name of the resource group
  /// [serviceName] Name of the service
  /// [taskName] Name of the Task
  GetServiceTaskArgs({
    String? expand,
    required String groupName,
    required String serviceName,
    required String taskName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      groupName = pulumi.Input.asInput<String>(groupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      taskName = pulumi.Input.asInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'groupName': groupName,
      'serviceName': serviceName,
      'taskName': taskName,
    };
  }

  factory GetServiceTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceTaskArgs(
      expand: map['expand'] == null ? null : map['expand'] as String,
      groupName: map['groupName'] as String,
      serviceName: map['serviceName'] as String,
      taskName: map['taskName'] as String,
    );
  }
}

