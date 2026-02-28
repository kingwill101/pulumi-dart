// ignore_for_file: unused_element, unnecessary_cast


class AgentPromptVariantGenAiResourceAgent {
  /// ARN of the agent with which to use the prompt.
  final String agentIdentifier;

  /// Creates a new [AgentPromptVariantGenAiResourceAgent].
  /// [agentIdentifier] ARN of the agent with which to use the prompt.
  AgentPromptVariantGenAiResourceAgent({
    required this.agentIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentIdentifier': agentIdentifier,
    };
  }

  factory AgentPromptVariantGenAiResourceAgent.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResourceAgent(
      agentIdentifier: map['agentIdentifier'] as String,
    );
  }
}

