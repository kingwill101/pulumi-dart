// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection_configuration_conditional.dart';
import 'agent_flow_definition_connection_configuration_data.dart';

class AgentFlowDefinitionConnectionConfiguration {
  /// The configuration of a connection originating from a Condition node. See Conditional Connection Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionConnectionConfigurationConditional>? conditional;
  /// The configuration of a connection originating from a node that isn’t a Condition node. See Data Connection Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionConnectionConfigurationData>? data;

  /// Creates a new [AgentFlowDefinitionConnectionConfiguration].
  /// [conditional] The configuration of a connection originating from a Condition node. See Conditional Connection Configuration for more information.
  /// [data] The configuration of a connection originating from a node that isn’t a Condition node. See Data Connection Configuration for more information.
  AgentFlowDefinitionConnectionConfiguration({
    this.conditional,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditional': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionConnectionConfigurationConditional, Map<String, dynamic>>(conditional, (value) => value.toMap()),
      'data': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionConnectionConfigurationData, Map<String, dynamic>>(data, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionConnectionConfiguration(
      conditional: (() { final guardedValue = map['conditional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionConnectionConfigurationConditional.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionConnectionConfigurationData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

