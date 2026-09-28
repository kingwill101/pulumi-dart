// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_gen_ai_resource_agent.dart';

class AgentPromptVariantGenAiResource {
  /// Amazon Bedrock agent with which to use the prompt. See `agent` Block for more information.
  final pulumi.Input<AgentPromptVariantGenAiResourceAgent?>? agent;

  /// Creates a new [AgentPromptVariantGenAiResource].
  /// [agent] Amazon Bedrock agent with which to use the prompt. See `agent` Block for more information.
  const AgentPromptVariantGenAiResource({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantGenAiResourceAgent, Map<String, dynamic>>(agent, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantGenAiResource.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantGenAiResource(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantGenAiResourceAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
