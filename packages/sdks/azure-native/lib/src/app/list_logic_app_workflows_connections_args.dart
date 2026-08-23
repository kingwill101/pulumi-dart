// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_logic_app_workflows_connections_args_doc}
/// Arguments for listLogicAppWorkflowsConnections.
/// {@endtemplate}
/// {@macro pulumi_app_list_logic_app_workflows_connections_args_doc}
class ListLogicAppWorkflowsConnectionsArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// Name of the Logic App, the extension resource.
  final pulumi.Input<String> logicAppName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListLogicAppWorkflowsConnectionsArgs].
  /// [containerAppName] Name of the Container App.
  /// [logicAppName] Name of the Logic App, the extension resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListLogicAppWorkflowsConnectionsArgs({
    required this.containerAppName,
    required this.logicAppName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'logicAppName': logicAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListLogicAppWorkflowsConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListLogicAppWorkflowsConnectionsArgs(
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      logicAppName: pulumi.Input.fromValue(map['logicAppName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
