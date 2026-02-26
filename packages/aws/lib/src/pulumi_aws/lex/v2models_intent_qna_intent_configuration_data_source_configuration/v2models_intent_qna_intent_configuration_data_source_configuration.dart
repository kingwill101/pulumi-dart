// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration/v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration.dart';
import '../v2models_intent_qna_intent_configuration_data_source_configuration_kendra_configuration/v2models_intent_qna_intent_configuration_data_source_configuration_kendra_configuration.dart';
import '../v2models_intent_qna_intent_configuration_data_source_configuration_opensearch_configuration/v2models_intent_qna_intent_configuration_data_source_configuration_opensearch_configuration.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfiguration {
  /// Configuration block for Amazon Bedrock Knowledge Base as a data source. See <span pulumi-lang-nodejs="`bedrockKnowledgeStoreConfiguration`" pulumi-lang-dotnet="`BedrockKnowledgeStoreConfiguration`" pulumi-lang-go="`bedrockKnowledgeStoreConfiguration`" pulumi-lang-python="`bedrock_knowledge_store_configuration`" pulumi-lang-yaml="`bedrockKnowledgeStoreConfiguration`" pulumi-lang-java="`bedrockKnowledgeStoreConfiguration`">`bedrock_knowledge_store_configuration`</span>.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration?
      bedrockKnowledgeStoreConfiguration;

  /// Configuration block for Amazon Kendra as a data source. See <span pulumi-lang-nodejs="`kendraConfiguration`" pulumi-lang-dotnet="`KendraConfiguration`" pulumi-lang-go="`kendraConfiguration`" pulumi-lang-python="`kendra_configuration`" pulumi-lang-yaml="`kendraConfiguration`" pulumi-lang-java="`kendraConfiguration`">`kendra_configuration`</span>.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration?
      kendraConfiguration;

  /// Configuration block for OpenSearch as a data source. See <span pulumi-lang-nodejs="`opensearchConfiguration`" pulumi-lang-dotnet="`OpensearchConfiguration`" pulumi-lang-go="`opensearchConfiguration`" pulumi-lang-python="`opensearch_configuration`" pulumi-lang-yaml="`opensearchConfiguration`" pulumi-lang-java="`opensearchConfiguration`">`opensearch_configuration`</span>.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration?
      opensearchConfiguration;

  V2modelsIntentQnaIntentConfigurationDataSourceConfiguration({
    this.bedrockKnowledgeStoreConfiguration,
    this.kendraConfiguration,
    this.opensearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bedrockKnowledgeStoreConfigurationValue =
        bedrockKnowledgeStoreConfiguration;
    if (bedrockKnowledgeStoreConfigurationValue != null) {
      map['bedrockKnowledgeStoreConfiguration'] =
          bedrockKnowledgeStoreConfigurationValue.toMap();
    }
    final kendraConfigurationValue = kendraConfiguration;
    if (kendraConfigurationValue != null) {
      map['kendraConfiguration'] = kendraConfigurationValue.toMap();
    }
    final opensearchConfigurationValue = opensearchConfiguration;
    if (opensearchConfigurationValue != null) {
      map['opensearchConfiguration'] = opensearchConfigurationValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfiguration(
      bedrockKnowledgeStoreConfiguration: map[
                  'bedrockKnowledgeStoreConfiguration'] ==
              null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration
              .fromMap((map['bedrockKnowledgeStoreConfiguration'] as Map)
                  .cast<String, dynamic>()),
      kendraConfiguration: map['kendraConfiguration'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationKendraConfiguration
              .fromMap(
                  (map['kendraConfiguration'] as Map).cast<String, dynamic>()),
      opensearchConfiguration: map['opensearchConfiguration'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration
              .fromMap((map['opensearchConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
