// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_embedding_model_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_vector_knowledge_base_configuration_supplemental_data_storage_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration {
  /// ARN of the model used to create vector embeddings for the knowledge base.
  final pulumi.Input<String> embeddingModelArn;
  /// The embeddings model configuration details for the vector model used in Knowledge Base.  See `embedding_model_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration>? embeddingModelConfiguration;
  /// supplemental_data_storage_configuration.  See `supplemental_data_storage_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration>? supplementalDataStorageConfiguration;

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
    return <String, dynamic>{
      'embeddingModelArn': embeddingModelArn,
      'embeddingModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration, Map<String, dynamic>>(embeddingModelConfiguration, (value) => value.toMap()),
      'supplementalDataStorageConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration, Map<String, dynamic>>(supplementalDataStorageConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration(
      embeddingModelArn: (map['embeddingModelArn'] as String).input(),
      embeddingModelConfiguration: map['embeddingModelConfiguration'] == null ? null : (AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfiguration.fromMap((map['embeddingModelConfiguration'] as Map).cast<String, dynamic>())).input(),
      supplementalDataStorageConfiguration: map['supplementalDataStorageConfiguration'] == null ? null : (AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfiguration.fromMap((map['supplementalDataStorageConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

