// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration_exact_response_fields.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration {
  /// ARN of the Bedrock Knowledge Base.
  final String bedrockKnowledgeBaseArn;
  /// Whether to return exact responses from the knowledge base. Defaults to `false`.
  final bool? exactResponse;
  /// Configuration block for exact response fields. See `exact_response_fields`.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields? exactResponseFields;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration].
  /// [bedrockKnowledgeBaseArn] ARN of the Bedrock Knowledge Base.
  /// [exactResponse] Whether to return exact responses from the knowledge base. Defaults to `false`.
  /// [exactResponseFields] Configuration block for exact response fields. See `exact_response_fields`.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration({
    required this.bedrockKnowledgeBaseArn,
    this.exactResponse,
    this.exactResponseFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockKnowledgeBaseArn': bedrockKnowledgeBaseArn,
      'exactResponse': ?exactResponse,
      'exactResponseFields': ?exactResponseFields == null ? null : exactResponseFields!.toMap(),
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration(
      bedrockKnowledgeBaseArn: map['bedrockKnowledgeBaseArn'] as String,
      exactResponse: map['exactResponse'] == null ? null : map['exactResponse'] as bool,
      exactResponseFields: map['exactResponseFields'] == null ? null : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields.fromMap((map['exactResponseFields'] as Map).cast<String, dynamic>()),
    );
  }
}

