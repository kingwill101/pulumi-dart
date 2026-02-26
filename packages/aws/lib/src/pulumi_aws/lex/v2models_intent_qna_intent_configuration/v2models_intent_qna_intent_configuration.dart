// ignore_for_file: unused_element, unnecessary_cast

import '../v2models_intent_qna_intent_configuration_bedrock_model_configuration/v2models_intent_qna_intent_configuration_bedrock_model_configuration.dart';
import '../v2models_intent_qna_intent_configuration_data_source_configuration/v2models_intent_qna_intent_configuration_data_source_configuration.dart';

class V2modelsIntentQnaIntentConfiguration {
  /// Configuration block for the Amazon Bedrock model to use for generating responses. See <span pulumi-lang-nodejs="`bedrockModelConfiguration`" pulumi-lang-dotnet="`BedrockModelConfiguration`" pulumi-lang-go="`bedrockModelConfiguration`" pulumi-lang-python="`bedrock_model_configuration`" pulumi-lang-yaml="`bedrockModelConfiguration`" pulumi-lang-java="`bedrockModelConfiguration`">`bedrock_model_configuration`</span>.
  final V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration?
      bedrockModelConfiguration;

  /// Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See <span pulumi-lang-nodejs="`dataSourceConfiguration`" pulumi-lang-dotnet="`DataSourceConfiguration`" pulumi-lang-go="`dataSourceConfiguration`" pulumi-lang-python="`data_source_configuration`" pulumi-lang-yaml="`dataSourceConfiguration`" pulumi-lang-java="`dataSourceConfiguration`">`data_source_configuration`</span>.
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
