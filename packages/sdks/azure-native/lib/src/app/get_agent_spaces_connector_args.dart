// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_agent_spaces_connector_args_doc}
/// Arguments for getAgentSpacesConnector.
/// {@endtemplate}
/// {@macro pulumi_app_get_agent_spaces_connector_args_doc}
class GetAgentSpacesConnectorArgs {
  /// The name of the AgentSpace
  final pulumi.Input<String> agentSpaceName;
  /// The name of the AgentSpaceConnector
  final pulumi.Input<String> connectorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAgentSpacesConnectorArgs].
  /// [agentSpaceName] The name of the AgentSpace
  /// [connectorName] The name of the AgentSpaceConnector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAgentSpacesConnectorArgs({
    required this.agentSpaceName,
    required this.connectorName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceName': agentSpaceName,
      'connectorName': connectorName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAgentSpacesConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentSpacesConnectorArgs(
      agentSpaceName: pulumi.Input.fromValue(map['agentSpaceName'] as String),
      connectorName: pulumi.Input.fromValue(map['connectorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
