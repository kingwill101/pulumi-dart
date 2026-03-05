// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_qna_intent_configuration_data_source_configuration_bedrock_knowledge_store_configuration_exact_response_fields.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration {
  /// ARN of the Bedrock Knowledge Base.
  final pulumi.Input<String> bedrockKnowledgeBaseArn;
  /// Whether to return exact responses from the knowledge base. Defaults to `false`.
  final pulumi.Input<bool>? exactResponse;
  /// Configuration block for exact response fields. See `exact_response_fields`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields>? exactResponseFields;

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
      'exactResponseFields': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields, Map<String, dynamic>>(exactResponseFields, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfiguration(
      bedrockKnowledgeBaseArn: pulumi.Input.fromValue(map['bedrockKnowledgeBaseArn'] as String),
      exactResponse: (() { final guardedValue = map['exactResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exactResponseFields: (() { final guardedValue = map['exactResponseFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentQnaIntentConfigurationDataSourceConfigurationBedrockKnowledgeStoreConfigurationExactResponseFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

