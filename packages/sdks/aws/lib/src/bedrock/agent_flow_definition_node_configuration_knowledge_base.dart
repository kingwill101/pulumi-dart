// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_knowledge_base_guardrail_configuration.dart';
import 'agent_flow_definition_node_configuration_knowledge_base_inference_configuration.dart';

class AgentFlowDefinitionNodeConfigurationKnowledgeBase {
  /// Configuration of a guardrail for prompt generation. See `definition.node.configuration.prompt.guardrail_configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration?>? guardrailConfiguration;
  /// Inference configurations for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.inference_configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration?>? inferenceConfiguration;
  /// Unique identifier of the knowledge base to query.
  final pulumi.Input<String> knowledgeBaseId;
  /// Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) to run inference with.
  final pulumi.Input<String> modelId;
  /// Maximum number of results to retrieve from the knowledge base. Valid values are between 1 and 100.
  final pulumi.Input<int?>? numberOfResults;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationKnowledgeBase].
  /// [guardrailConfiguration] Configuration of a guardrail for prompt generation. See `definition.node.configuration.prompt.guardrail_configuration` Block for details.
  /// [inferenceConfiguration] Inference configurations for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.inference_configuration` Block for details.
  /// [knowledgeBaseId] Unique identifier of the knowledge base to query.
  /// [modelId] Unique identifier of the model or [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html) to run inference with.
  /// [numberOfResults] Maximum number of results to retrieve from the knowledge base. Valid values are between 1 and 100.
  const AgentFlowDefinitionNodeConfigurationKnowledgeBase({
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
      guardrailConfiguration: (() { final guardedValue = map['guardrailConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationKnowledgeBaseGuardrailConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferenceConfiguration: (() { final guardedValue = map['inferenceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationKnowledgeBaseInferenceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      numberOfResults: (() { final guardedValue = map['numberOfResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
