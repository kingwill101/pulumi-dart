// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection_configuration.dart';

class AgentFlowDefinitionConnection {
  /// Configuration of the connection. See Connection Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionConnectionConfiguration>? configuration;
  /// A name for the connection that you can reference.
  final pulumi.Input<String> name;
  /// The node that the connection starts at.
  final pulumi.Input<String> source;
  /// The node that the connection ends at.
  final pulumi.Input<String> target;
  /// Whether the source node that the connection begins from is a condition node `Conditional` or not `Data`.
  final pulumi.Input<String> type;

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

