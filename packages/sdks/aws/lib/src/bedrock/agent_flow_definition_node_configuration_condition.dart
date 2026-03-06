// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_condition_condition.dart';

class AgentFlowDefinitionNodeConfigurationCondition {
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationConditionCondition>>? conditions;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationCondition].
  /// [conditions] Optional.
  const AgentFlowDefinitionNodeConfigurationCondition({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeConfigurationConditionCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationConditionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationCondition.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationCondition(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationConditionCondition>(guardedValue, (value) => AgentFlowDefinitionNodeConfigurationConditionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

