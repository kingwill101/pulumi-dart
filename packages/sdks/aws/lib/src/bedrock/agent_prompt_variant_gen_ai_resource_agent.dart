// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPromptVariantGenAiResourceAgent {
  /// ARN of the agent with which to use the prompt.
  final pulumi.Input<String> agentIdentifier;

  /// Creates a new [AgentPromptVariantGenAiResourceAgent].
  /// [agentIdentifier] ARN of the agent with which to use the prompt.
  const AgentPromptVariantGenAiResourceAgent({
    required this.agentIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentIdentifier': agentIdentifier,
    };
  }

  factory AgentPromptVariantGenAiResourceAgent.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResourceAgent(
      agentIdentifier: pulumi.Input.fromValue(map['agentIdentifier'] as String),
    );
  }
}
