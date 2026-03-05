// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration.dart';
import 'v2models_intent_qna_intent_configuration_data_source_configuration_kendra_configuration.dart';
import 'v2models_intent_qna_intent_configuration_data_source_configuration_opensearch_configuration.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfiguration {
  /// Configuration block for Amazon Bedrock Knowledge Base as a data source. See `bedrock_knowledge_store_configuration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration>? bedrockKnowledgeStoreConfiguration;
  /// Configuration block for Amazon Kendra as a data source. See `kendra_configuration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration>? kendraConfiguration;
  /// Configuration block for OpenSearch as a data source. See `opensearch_configuration`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration>? opensearchConfiguration;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfiguration].
  /// [bedrockKnowledgeStoreConfiguration] Configuration block for Amazon Bedrock Knowledge Base as a data source. See `bedrock_knowledge_store_configuration`.
  /// [kendraConfiguration] Configuration block for Amazon Kendra as a data source. See `kendra_configuration`.
  /// [opensearchConfiguration] Configuration block for OpenSearch as a data source. See `opensearch_configuration`.
  V2modelsIntentQnaIntentConfigurationDataSourceConfiguration({
    this.bedrockKnowledgeStoreConfiguration,
    this.kendraConfiguration,
    this.opensearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockKnowledgeStoreConfiguration': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration, Map<String, dynamic>>(bedrockKnowledgeStoreConfiguration, (value) => value.toMap()),
      'kendraConfiguration': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration, Map<String, dynamic>>(kendraConfiguration, (value) => value.toMap()),
      'opensearchConfiguration': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration, Map<String, dynamic>>(opensearchConfiguration, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfiguration(
      bedrockKnowledgeStoreConfiguration: (() { final guardedValue = map['bedrockKnowledgeStoreConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kendraConfiguration: (() { final guardedValue = map['kendraConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      opensearchConfiguration: (() { final guardedValue = map['opensearchConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

