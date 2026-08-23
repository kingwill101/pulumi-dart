// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connector_properties.dart';

/// {@template pulumi_app_agents_connector_args_doc}
/// The set of arguments for AgentsConnector.
/// {@endtemplate}
/// {@macro pulumi_app_agents_connector_args_doc}
class AgentsConnectorArgs {
  /// The name of the Agent
  final pulumi.Input<String> agentName;
  /// The name of the AgentConnector
  final pulumi.Input<String>? connectorName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AgentConnectorProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentsConnectorArgs].
  /// [agentName] The name of the Agent
  /// [connectorName] The name of the AgentConnector
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AgentsConnectorArgs({
    required this.agentName,
    this.connectorName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'connectorName': ?connectorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AgentConnectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentsConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AgentsConnectorArgs(
      agentName: pulumi.Input.fromValue(map['agentName'] as String),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentConnectorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
