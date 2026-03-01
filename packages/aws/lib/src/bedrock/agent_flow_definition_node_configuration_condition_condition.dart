// ignore_for_file: unused_element, unnecessary_cast


class AgentFlowDefinitionNodeConfigurationConditionCondition {
  final String? expression;
  /// A name for the flow.
  final String name;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationConditionCondition].
  /// [expression] Optional.
  /// [name] A name for the flow.
  AgentFlowDefinitionNodeConfigurationConditionCondition({
    this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'name': name,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationConditionCondition.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationConditionCondition(
      expression: map['expression'] == null ? null : map['expression'] as String,
      name: map['name'] as String,
    );
  }
}

