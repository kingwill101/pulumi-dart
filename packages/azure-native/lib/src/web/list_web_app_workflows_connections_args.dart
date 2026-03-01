// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_workflows_connections_args_doc}
/// Arguments for listWebAppWorkflowsConnections.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_workflows_connections_args_doc}
class ListWebAppWorkflowsConnectionsArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppWorkflowsConnectionsArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppWorkflowsConnectionsArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppWorkflowsConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppWorkflowsConnectionsArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

