// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_agents_connector_with_secrets_by_agent_args_doc}
/// Arguments for listAgentsConnectorWithSecretsByAgent.
/// {@endtemplate}
/// {@macro pulumi_app_list_agents_connector_with_secrets_by_agent_args_doc}
class ListAgentsConnectorWithSecretsByAgentArgs {
  /// The name of the Agent
  final pulumi.Input<String> agentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAgentsConnectorWithSecretsByAgentArgs].
  /// [agentName] The name of the Agent
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListAgentsConnectorWithSecretsByAgentArgs({
    required this.agentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAgentsConnectorWithSecretsByAgentArgs.fromMap(Map<String, dynamic> map) {
    return ListAgentsConnectorWithSecretsByAgentArgs(
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
