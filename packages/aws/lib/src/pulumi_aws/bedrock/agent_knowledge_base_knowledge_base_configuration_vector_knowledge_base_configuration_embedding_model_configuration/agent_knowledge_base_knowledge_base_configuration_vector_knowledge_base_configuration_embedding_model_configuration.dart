// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration/agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration {
  /// The vector configuration details on the Bedrock embeddings model.  See `bedrock_embedding_model_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration?
      bedrockEmbeddingModelConfiguration;

  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bedrockEmbeddingModelConfigurationValue =
        bedrockEmbeddingModelConfiguration;
    if (bedrockEmbeddingModelConfigurationValue != null) {
      map['bedrockEmbeddingModelConfiguration'] =
          bedrockEmbeddingModelConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration(
      bedrockEmbeddingModelConfiguration: map[
                  'bedrockEmbeddingModelConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration
              .fromMap((map['bedrockEmbeddingModelConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
