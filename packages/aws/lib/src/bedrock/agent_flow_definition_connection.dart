// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_connection_configuration.dart';

class AgentFlowDefinitionConnection {
  /// Configuration of the connection. See Connection Configuration for more information.
  final AgentFlowDefinitionConnectionConfiguration? configuration;

  /// A name for the connection that you can reference.
  final String name;

  /// The node that the connection starts at.
  final String source;

  /// The node that the connection ends at.
  final String target;

  /// Whether the source node that the connection begins from is a condition node `Conditional` or not `Data`.
  final String type;

  /// Creates a new [AgentFlowDefinitionConnection].
  /// [configuration] Configuration of the connection. See Connection Configuration for more information.
  /// [name] A name for the connection that you can reference.
  /// [source] The node that the connection starts at.
  /// [target] The node that the connection ends at.
  /// [type] Whether the source node that the connection begins from is a condition node `Conditional` or not `Data`.
  AgentFlowDefinitionConnection({
    this.configuration,
    required this.name,
    required this.source,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'name': name,
      'source': source,
      'target': target,
      'type': type,
    };
  }

  factory AgentFlowDefinitionConnection.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionConnection(
      configuration: map['configuration'] == null
          ? null
          : AgentFlowDefinitionConnectionConfiguration.fromMap(
              (map['configuration'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      source: map['source'] as String,
      target: map['target'] as String,
      type: map['type'] as String,
    );
  }
}
