// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionNodeConfigurationConditionCondition {
  final String? expression;

  /// A name for the flow.
  final String name;

  AgentFlowDefinitionNodeConfigurationConditionCondition({
    this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    map['name'] = name;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationConditionCondition.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationConditionCondition(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      name: map['name'] as String,
    );
  }
}
