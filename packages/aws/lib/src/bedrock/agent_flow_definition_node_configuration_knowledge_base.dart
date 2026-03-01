// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_knowledge_base_guardrail_configuration.dart';
import 'agent_flow_definition_node_configuration_knowledge_base_inference_configuration.dart';

class AgentFlowDefinitionNodeConfigurationKnowledgeBase {
  /// Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration?
  guardrailConfiguration;

  /// Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration?
  inferenceConfiguration;

  /// The unique identifier of the knowledge base to query.
  final String knowledgeBaseId;
  final String modelId;
  final int? numberOfResults;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBase].
  /// [guardrailConfiguration] Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  /// [inferenceConfiguration] Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  /// [knowledgeBaseId] The unique identifier of the knowledge base to query.
  /// [modelId] Required.
  /// [numberOfResults] Optional.
  AgentFlowDefinitionNodeConfigurationKnowledgeBase({
    this.guardrailConfiguration,
    this.inferenceConfiguration,
    required this.knowledgeBaseId,
    required this.modelId,
    this.numberOfResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailConfiguration': ?guardrailConfiguration == null
          ? null
          : guardrailConfiguration!.toMap(),
      'inferenceConfiguration': ?inferenceConfiguration == null
          ? null
          : inferenceConfiguration!.toMap(),
      'knowledgeBaseId': knowledgeBaseId,
      'modelId': modelId,
      'numberOfResults': ?numberOfResults,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBase.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBase(
      guardrailConfiguration: map['guardrailConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration.fromMap(
              (map['guardrailConfiguration'] as Map).cast<String, dynamic>(),
            ),
      inferenceConfiguration: map['inferenceConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration.fromMap(
              (map['inferenceConfiguration'] as Map).cast<String, dynamic>(),
            ),
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      modelId: map['modelId'] as String,
      numberOfResults: map['numberOfResults'] == null
          ? null
          : map['numberOfResults'] as int,
    );
  }
}
