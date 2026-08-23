// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_agent_spaces_connector_all_secrets_args_doc}
/// Arguments for listAgentSpacesConnectorAllSecrets.
/// {@endtemplate}
/// {@macro pulumi_app_list_agent_spaces_connector_all_secrets_args_doc}
class ListAgentSpacesConnectorAllSecretsArgs {
  /// The name of the AgentSpace
  final pulumi.Input<String> agentSpaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListAgentSpacesConnectorAllSecretsArgs].
  /// [agentSpaceName] The name of the AgentSpace
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListAgentSpacesConnectorAllSecretsArgs({
    required this.agentSpaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceName': agentSpaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListAgentSpacesConnectorAllSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListAgentSpacesConnectorAllSecretsArgs(
      agentSpaceName: pulumi.Input.fromValue(map['agentSpaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
