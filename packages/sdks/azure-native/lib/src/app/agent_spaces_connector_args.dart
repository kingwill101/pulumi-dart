// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_connector_properties.dart';

/// {@template pulumi_app_agent_spaces_connector_args_doc}
/// The set of arguments for AgentSpacesConnector.
/// {@endtemplate}
/// {@macro pulumi_app_agent_spaces_connector_args_doc}
class AgentSpacesConnectorArgs {
  /// The name of the AgentSpace
  final pulumi.Input<String> agentSpaceName;
  /// The name of the AgentSpaceConnector
  final pulumi.Input<String?>? connectorName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AgentSpaceConnectorProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AgentSpacesConnectorArgs].
  /// [agentSpaceName] The name of the AgentSpace
  /// [connectorName] The name of the AgentSpaceConnector
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AgentSpacesConnectorArgs({
    required this.agentSpaceName,
    this.connectorName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceName': agentSpaceName,
      'connectorName': ?connectorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AgentSpaceConnectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AgentSpacesConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AgentSpacesConnectorArgs(
      agentSpaceName: pulumi.Input.fromValue(map['agentSpaceName'] as String),
      connectorName: (() { final guardedValue = map['connectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentSpaceConnectorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
