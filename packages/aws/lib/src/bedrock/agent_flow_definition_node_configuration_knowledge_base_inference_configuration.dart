// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_knowledge_base_inference_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration {
  final AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText?
  text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration].
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': ?text == null ? null : text!.toMap()};
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration(
      text: map['text'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfigurationText.fromMap(
              (map['text'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
