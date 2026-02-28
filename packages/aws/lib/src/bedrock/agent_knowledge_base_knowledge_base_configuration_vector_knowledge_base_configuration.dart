// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration {
  /// ARN of the model used to create vector embeddings for the knowledge base.
  final String embeddingModelArn;

  /// The embeddings model configuration details for the vector model used in Knowledge Base.  See `embedding_model_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration?
      embeddingModelConfiguration;

  /// supplemental_data_storage_configuration.  See `supplemental_data_storage_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration?
      supplementalDataStorageConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration].
  /// [embeddingModelArn] ARN of the model used to create vector embeddings for the knowledge base.
  /// [embeddingModelConfiguration] The embeddings model configuration details for the vector model used in Knowledge Base.  See `embedding_model_configuration` block for details.
  /// [supplementalDataStorageConfiguration] supplemental_data_storage_configuration.  See `supplemental_data_storage_configuration` block for details.
  AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration({
    required this.embeddingModelArn,
    this.embeddingModelConfiguration,
    this.supplementalDataStorageConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['embeddingModelArn'] = embeddingModelArn;
    final embeddingModelConfigurationValue = embeddingModelConfiguration;
    if (embeddingModelConfigurationValue != null) {
      map['embeddingModelConfiguration'] =
          embeddingModelConfigurationValue.toMap();
    }
    final supplementalDataStorageConfigurationValue =
        supplementalDataStorageConfiguration;
    if (supplementalDataStorageConfigurationValue != null) {
      map['supplementalDataStorageConfiguration'] =
          supplementalDataStorageConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration(
      embeddingModelArn: map['embeddingModelArn'] as String,
      embeddingModelConfiguration: map['embeddingModelConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration
              .fromMap((map['embeddingModelConfiguration'] as Map)
                  .cast<String, dynamic>()),
      supplementalDataStorageConfiguration: map[
                  'supplementalDataStorageConfiguration'] ==
              null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration
              .fromMap((map['supplementalDataStorageConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
