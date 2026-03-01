// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_gen_ai_resource_agent.dart';

class AgentPromptVariantGenAiResource {
  /// Specifies an Amazon Bedrock agent with which to use the prompt. See Agent Configuration for more information.
  final AgentPromptVariantGenAiResourceAgent? agent;

  /// Creates a new [AgentPromptVariantGenAiResource].
  /// [agent] Specifies an Amazon Bedrock agent with which to use the prompt. See Agent Configuration for more information.
  AgentPromptVariantGenAiResource({this.agent});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'agent': ?agent == null ? null : agent!.toMap()};
  }

  factory AgentPromptVariantGenAiResource.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResource(
      agent: map['agent'] == null
          ? null
          : AgentPromptVariantGenAiResourceAgent.fromMap(
              (map['agent'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
