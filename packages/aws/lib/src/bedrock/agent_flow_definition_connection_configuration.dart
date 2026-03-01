// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_connection_configuration_conditional.dart';
import 'agent_flow_definition_connection_configuration_data.dart';

class AgentFlowDefinitionConnectionConfiguration {
  /// The configuration of a connection originating from a Condition node. See Conditional Connection Configuration for more information.
  final AgentFlowDefinitionConnectionConfigurationConditional? conditional;

  /// The configuration of a connection originating from a node that isn’t a Condition node. See Data Connection Configuration for more information.
  final AgentFlowDefinitionConnectionConfigurationData? data;

  /// Creates a new [AgentFlowDefinitionConnectionConfiguration].
  /// [conditional] The configuration of a connection originating from a Condition node. See Conditional Connection Configuration for more information.
  /// [data] The configuration of a connection originating from a node that isn’t a Condition node. See Data Connection Configuration for more information.
  AgentFlowDefinitionConnectionConfiguration({this.conditional, this.data});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditional': ?conditional == null ? null : conditional!.toMap(),
      'data': ?data == null ? null : data!.toMap(),
    };
  }

  factory AgentFlowDefinitionConnectionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionConnectionConfiguration(
      conditional: map['conditional'] == null
          ? null
          : AgentFlowDefinitionConnectionConfigurationConditional.fromMap(
              (map['conditional'] as Map).cast<String, dynamic>(),
            ),
      data: map['data'] == null
          ? null
          : AgentFlowDefinitionConnectionConfigurationData.fromMap(
              (map['data'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
