// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionConnectionConfigurationConditional {
  final String condition;

  AgentFlowDefinitionConnectionConfigurationConditional({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition;
    return map;
  }

  factory AgentFlowDefinitionConnectionConfigurationConditional.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionConnectionConfigurationConditional(
      condition: map['condition'] as String,
    );
  }
}
