// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_condition_condition.dart';

class AgentFlowDefinitionNodeConfigurationCondition {
  final List<AgentFlowDefinitionNodeConfigurationConditionCondition>?
  conditions;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationCondition].
  /// [conditions] Optional.
  AgentFlowDefinitionNodeConfigurationCondition({this.conditions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<
              AgentFlowDefinitionNodeConfigurationConditionCondition,
              Map<String, dynamic>
            >(conditions!, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationCondition(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<
              AgentFlowDefinitionNodeConfigurationConditionCondition
            >(
              map['conditions'],
              (value) =>
                  AgentFlowDefinitionNodeConfigurationConditionCondition.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
