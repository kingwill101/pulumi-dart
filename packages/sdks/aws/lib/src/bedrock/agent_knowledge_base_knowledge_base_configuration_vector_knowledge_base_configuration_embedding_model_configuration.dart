// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration {
  /// Vector configuration details for the Bedrock embeddings model. See `bedrockEmbeddingModelConfiguration` Block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration?>? bedrockEmbeddingModelConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration].
  /// [bedrockEmbeddingModelConfiguration] Vector configuration details for the Bedrock embeddings model. See `bedrockEmbeddingModelConfiguration` Block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockEmbeddingModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration, Map<String, dynamic>>(bedrockEmbeddingModelConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration(
      bedrockEmbeddingModelConfiguration: (() { final guardedValue = map['bedrockEmbeddingModelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
