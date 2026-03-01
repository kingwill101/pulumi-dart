// ignore_for_file: unused_element, unnecessary_cast

class AgentFlowDefinitionConnectionConfigurationConditional {
  final String condition;

  /// Creates a new [AgentFlowDefinitionConnectionConfigurationConditional].
  /// [condition] Required.
  AgentFlowDefinitionConnectionConfigurationConditional({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'condition': condition};
  }

  factory AgentFlowDefinitionConnectionConfigurationConditional.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionConnectionConfigurationConditional(
      condition: map['condition'] as String,
    );
  }
}
