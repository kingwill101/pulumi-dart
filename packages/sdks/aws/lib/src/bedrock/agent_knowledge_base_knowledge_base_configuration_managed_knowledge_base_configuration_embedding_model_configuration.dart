// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_managed_knowledge_base_configuration_embedding_model_configuration_bedrock_embedding_model_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration {
  /// The vector configuration details on the Bedrock embeddings model.  See `bedrockEmbeddingModelConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration>? bedrockEmbeddingModelConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration].
  /// [bedrockEmbeddingModelConfiguration] The vector configuration details on the Bedrock embeddings model.  See `bedrockEmbeddingModelConfiguration` block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration({
    this.bedrockEmbeddingModelConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockEmbeddingModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration, Map<String, dynamic>>(bedrockEmbeddingModelConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration(
      bedrockEmbeddingModelConfiguration: (() { final guardedValue = map['bedrockEmbeddingModelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
