// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_agents_connector_args_doc}
/// Arguments for getAgentsConnector.
/// {@endtemplate}
/// {@macro pulumi_app_get_agents_connector_args_doc}
class GetAgentsConnectorArgs {
  /// The name of the Agent
  final pulumi.Input<String> agentName;
  /// The name of the AgentConnector
  final pulumi.Input<String> connectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentsConnectorArgs].
  /// [agentName] The name of the Agent
  /// [connectorName] The name of the AgentConnector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAgentsConnectorArgs({
    required this.agentName,
    required this.connectorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentsConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentsConnectorArgs(
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      connectorName: pulumi.Input.fromValue(map['connectorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
