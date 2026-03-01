// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_qna_intent_configuration_bedrock_model_configuration.dart';
import 'v2models_intent_qna_intent_configuration_data_source_configuration.dart';

class V2modelsIntentQnaIntentConfiguration {
  /// Configuration block for the Amazon Bedrock model to use for generating responses. See `bedrock_model_configuration`.
  final V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration? bedrockModelConfiguration;
  /// Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See `data_source_configuration`.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfiguration? dataSourceConfiguration;

  /// Creates a new [V2modelsIntentQnaIntentConfiguration].
  /// [bedrockModelConfiguration] Configuration block for the Amazon Bedrock model to use for generating responses. See `bedrock_model_configuration`.
  /// [dataSourceConfiguration] Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See `data_source_configuration`.
  V2modelsIntentQnaIntentConfiguration({
    this.bedrockModelConfiguration,
    this.dataSourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockModelConfiguration': ?bedrockModelConfiguration == null ? null : bedrockModelConfiguration!.toMap(),
      'dataSourceConfiguration': ?dataSourceConfiguration == null ? null : dataSourceConfiguration!.toMap(),
    };
  }

  factory V2modelsIntentQnaIntentConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfiguration(
      bedrockModelConfiguration: map['bedrockModelConfiguration'] == null ? null : V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration.fromMap((map['bedrockModelConfiguration'] as Map).cast<String, dynamic>()),
      dataSourceConfiguration: map['dataSourceConfiguration'] == null ? null : V2modelsIntentQnaIntentConfigurationDataSourceConfiguration.fromMap((map['dataSourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

