// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration_exact_response_fields/v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration_exact_response_fields.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration {
  /// ARN of the Bedrock Knowledge Base.
  final String bedrockKnowledgeBaseArn;

  /// Whether to return exact responses from the knowledge base. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? exactResponse;

  /// Configuration block for exact response fields. See <span pulumi-lang-nodejs="`exactResponseFields`" pulumi-lang-dotnet="`ExactResponseFields`" pulumi-lang-go="`exactResponseFields`" pulumi-lang-python="`exact_response_fields`" pulumi-lang-yaml="`exactResponseFields`" pulumi-lang-java="`exactResponseFields`">`exact_response_fields`</span>.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields?
      exactResponseFields;

  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration({
    required this.bedrockKnowledgeBaseArn,
    this.exactResponse,
    this.exactResponseFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bedrockKnowledgeBaseArn'] = bedrockKnowledgeBaseArn;
    final exactResponseValue = exactResponse;
    if (exactResponseValue != null) {
      map['exactResponse'] = exactResponseValue;
    }
    final exactResponseFieldsValue = exactResponseFields;
    if (exactResponseFieldsValue != null) {
      map['exactResponseFields'] = exactResponseFieldsValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration(
      bedrockKnowledgeBaseArn: map['bedrockKnowledgeBaseArn'] as String,
      exactResponse:
          map['exactResponse'] == null ? null : map['exactResponse'] as bool,
      exactResponseFields: map['exactResponseFields'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields
              .fromMap(
                  (map['exactResponseFields'] as Map).cast<String, dynamic>()),
    );
  }
}
