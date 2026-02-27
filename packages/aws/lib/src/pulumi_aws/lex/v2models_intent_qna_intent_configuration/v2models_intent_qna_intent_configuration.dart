// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_qna_intent_configuration_bedrock_model_configuration/v2models_intent_qna_intent_configuration_bedrock_model_configuration.dart';
import '../v2models_intent_qna_intent_configuration_data_source_configuration/v2models_intent_qna_intent_configuration_data_source_configuration.dart';

class V2modelsIntentQnaIntentConfiguration {
  /// Configuration block for the Amazon Bedrock model to use for generating responses. See `bedrock_model_configuration`.
  final V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration?
      bedrockModelConfiguration;

  /// Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See `data_source_configuration`.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfiguration?
      dataSourceConfiguration;

  V2modelsIntentQnaIntentConfiguration({
    this.bedrockModelConfiguration,
    this.dataSourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bedrockModelConfigurationValue = bedrockModelConfiguration;
    if (bedrockModelConfigurationValue != null) {
      map['bedrockModelConfiguration'] = bedrockModelConfigurationValue.toMap();
    }
    final dataSourceConfigurationValue = dataSourceConfiguration;
    if (dataSourceConfigurationValue != null) {
      map['dataSourceConfiguration'] = dataSourceConfigurationValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentQnaIntentConfiguration.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfiguration(
      bedrockModelConfiguration: map['bedrockModelConfiguration'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration
              .fromMap((map['bedrockModelConfiguration'] as Map)
                  .cast<String, dynamic>()),
      dataSourceConfiguration: map['dataSourceConfiguration'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfiguration.fromMap(
              (map['dataSourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
