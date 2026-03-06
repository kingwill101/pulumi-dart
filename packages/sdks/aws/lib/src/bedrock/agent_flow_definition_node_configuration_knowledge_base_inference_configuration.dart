// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_knowledge_base_inference_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration {
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText>? text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration].
  /// [text] Optional.
  const AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration(
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

