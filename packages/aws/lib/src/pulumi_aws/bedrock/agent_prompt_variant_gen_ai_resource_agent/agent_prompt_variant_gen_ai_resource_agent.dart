// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantGenAiResourceAgent {
  /// ARN of the agent with which to use the prompt.
  final String agentIdentifier;

  AgentPromptVariantGenAiResourceAgent({
    required this.agentIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentIdentifier'] = agentIdentifier;
    return map;
  }

  factory AgentPromptVariantGenAiResourceAgent.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResourceAgent(
      agentIdentifier: map['agentIdentifier'] as String,
    );
  }
}
