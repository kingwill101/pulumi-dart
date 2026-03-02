// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_knowledge_base_guardrail_configuration.dart';
import 'agent_flow_definition_node_configuration_knowledge_base_inference_configuration.dart';

class AgentFlowDefinitionNodeConfigurationKnowledgeBase {
  /// Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration>? guardrailConfiguration;
  /// Contains inference configurations for the prompt. See Prompt Inference Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration>? inferenceConfiguration;
  /// The unique identifier of the knowledge base to query.
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> modelId;
  final pulumi.Input<int>? numberOfResults;

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
      'guardrailConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration, Map<String, dynamic>>(guardrailConfiguration, (value) => value.toMap()),
      'inferenceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration, Map<String, dynamic>>(inferenceConfiguration, (value) => value.toMap()),
      'knowledgeBaseId': knowledgeBaseId,
      'modelId': modelId,
      'numberOfResults': ?numberOfResults,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationKnowledgeBase(
      guardrailConfiguration: map['guardrailConfiguration'] == null ? null : ((AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration.fromMap((map['guardrailConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      inferenceConfiguration: map['inferenceConfiguration'] == null ? null : ((AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration.fromMap((map['inferenceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      knowledgeBaseId: (map['knowledgeBaseId'] as String).input(),
      modelId: (map['modelId'] as String).input(),
      numberOfResults: map['numberOfResults'] == null ? null : ((map['numberOfResults'] as int).input()).input(),
    );
  }
}

