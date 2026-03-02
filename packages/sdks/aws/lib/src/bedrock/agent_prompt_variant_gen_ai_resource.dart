// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_gen_ai_resource_agent.dart';

class AgentPromptVariantGenAiResource {
  /// Specifies an Amazon Bedrock agent with which to use the prompt. See Agent Configuration for more information.
  final pulumi.Input<AgentPromptVariantGenAiResourceAgent>? agent;

  /// Creates a new [AgentPromptVariantGenAiResource].
  /// [agent] Specifies an Amazon Bedrock agent with which to use the prompt. See Agent Configuration for more information.
  AgentPromptVariantGenAiResource({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantGenAiResourceAgent, Map<String, dynamic>>(agent, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantGenAiResource.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResource(
      agent: map['agent'] == null ? null : (AgentPromptVariantGenAiResourceAgent.fromMap((map['agent'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

