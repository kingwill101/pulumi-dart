// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_connection_configuration_conditional.dart';
import 'agent_flow_definition_connection_configuration_data.dart';

class AgentFlowDefinitionConnectionConfiguration {
  /// Configuration of a connection originating from a Condition node. See `definition.connection.configuration.conditional` Block for details.
  final pulumi.Input<AgentFlowDefinitionConnectionConfigurationConditional?>? conditional;
  /// Configuration of a connection originating from a node that isn't a Condition node. See `definition.connection.configuration.data` Block for details.
  final pulumi.Input<AgentFlowDefinitionConnectionConfigurationData?>? data;

  /// Creates a new [AgentFlowDefinitionConnectionConfiguration].
  /// [conditional] Configuration of a connection originating from a Condition node. See `definition.connection.configuration.conditional` Block for details.
  /// [data] Configuration of a connection originating from a node that isn't a Condition node. See `definition.connection.configuration.data` Block for details.
  const AgentFlowDefinitionConnectionConfiguration({
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
