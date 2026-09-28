// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection_configuration.dart';

class AgentFlowDefinitionConnection {
  /// Configurations for the node. See `definition.node.configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionConnectionConfiguration?>? configuration;
  /// Name for the flow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;
  /// Node that the connection starts at.
  final pulumi.Input<String> source;
  /// Node that the connection ends at.
  final pulumi.Input<String> target;
  /// Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  final pulumi.Input<String> type;

  /// Creates a new [AgentFlowDefinitionConnection].
  /// [configuration] Configurations for the node. See `definition.node.configuration` Block for details.
  /// [name] Name for the flow.
  /// [source] Node that the connection starts at.
  /// [target] Node that the connection ends at.
  /// [type] Data type of the output. If the output doesn't match this type at runtime, a validation error is thrown.
  const AgentFlowDefinitionConnection({
    this.configuration,
    required this.name,
    required this.source,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionConnectionConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': name,
      'source': source,
      'target': target,
      'type': type,
    };
  }

  factory AgentFlowDefinitionConnection.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionConnection(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionConnectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
