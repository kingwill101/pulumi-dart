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
  ListLogicAppWorkflowsConnectionsArgs({
    required String containerAppName,
    required String logicAppName,
    required String resourceGroupName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      logicAppName = pulumi.Input.asInput<String>(logicAppName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'logicAppName': logicAppName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListLogicAppWorkflowsConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListLogicAppWorkflowsConnectionsArgs(
      containerAppName: map['containerAppName'] as String,
      logicAppName: map['logicAppName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

