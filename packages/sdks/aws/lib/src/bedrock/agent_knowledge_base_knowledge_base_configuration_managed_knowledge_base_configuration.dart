// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_managed_knowledge_base_configuration_embedding_model_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_managed_knowledge_base_configuration_server_side_encryption_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration {
  /// ARN of the embedding model. Required when `embeddingModelType` is `CUSTOM`.
  final pulumi.Input<String>? embeddingModelArn;
  /// Configuration for the embedding model. Required when `embeddingModelType` is `CUSTOM`. See `embeddingModelConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration>? embeddingModelConfiguration;
  /// Type of embedding model. Valid values: `MANAGED`, `CUSTOM`. When `MANAGED`, no model selection or configuration is required. When `CUSTOM`, `embeddingModelArn` and `embeddingModelConfiguration` are required. Defaults to `MANAGED`.
  final pulumi.Input<String>? embeddingModelType;
  /// Server-side encryption configuration for the managed knowledge base. See `serverSideEncryptionConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration].
  /// [embeddingModelArn] ARN of the embedding model. Required when `embeddingModelType` is `CUSTOM`.
  /// [embeddingModelConfiguration] Configuration for the embedding model. Required when `embeddingModelType` is `CUSTOM`. See `embeddingModelConfiguration` block for details.
  /// [embeddingModelType] Type of embedding model. Valid values: `MANAGED`, `CUSTOM`. When `MANAGED`, no model selection or configuration is required. When `CUSTOM`, `embeddingModelArn` and `embeddingModelConfiguration` are required. Defaults to `MANAGED`.
  /// [serverSideEncryptionConfiguration] Server-side encryption configuration for the managed knowledge base. See `serverSideEncryptionConfiguration` block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration({
    this.embeddingModelArn,
    this.embeddingModelConfiguration,
    this.embeddingModelType,
    this.serverSideEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddingModelArn': ?embeddingModelArn,
      'embeddingModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration, Map<String, dynamic>>(embeddingModelConfiguration, (value) => value.toMap()),
      'embeddingModelType': ?embeddingModelType,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfiguration(
      embeddingModelArn: (() { final guardedValue = map['embeddingModelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      embeddingModelConfiguration: (() { final guardedValue = map['embeddingModelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      embeddingModelType: (() { final guardedValue = map['embeddingModelType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverSideEncryptionConfiguration: (() { final guardedValue = map['serverSideEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
