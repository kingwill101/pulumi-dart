// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_qna_intent_configuration_bedrock_model_configuration.dart';
import 'v2models_intent_qna_intent_configuration_data_source_configuration.dart';

class V2modelsIntentQnaIntentConfiguration {
  /// Configuration block for the Amazon Bedrock model to use for generating responses. See `bedrock_model_configuration`.
  final pulumi.Input<
    V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration
  >?
  bedrockModelConfiguration;

  /// Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See `data_source_configuration`.
  final pulumi.Input<
    V2modelsIntentQnaIntentConfigurationDataSourceConfiguration
  >?
  dataSourceConfiguration;

  /// Creates a new [V2modelsIntentQnaIntentConfiguration].
  /// [bedrockModelConfiguration] Configuration block for the Amazon Bedrock model to use for generating responses. See `bedrock_model_configuration`.
  /// [dataSourceConfiguration] Configuration block for the data sources to use for the QnA intent. Only one data source (Bedrock Knowledge Base, Kendra, or OpenSearch) can be specified. See `data_source_configuration`.
  V2modelsIntentQnaIntentConfiguration({
    this.bedrockModelConfiguration,
    this.dataSourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockModelConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration,
            Map<String, dynamic>
          >(bedrockModelConfiguration, (value) => value.toMap()),
      'dataSourceConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            V2modelsIntentQnaIntentConfigurationDataSourceConfiguration,
            Map<String, dynamic>
          >(dataSourceConfiguration, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentQnaIntentConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentQnaIntentConfiguration(
      bedrockModelConfiguration: (() {
        final guardedValue = map['bedrockModelConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentQnaIntentConfigurationBedrockModelConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataSourceConfiguration: (() {
        final guardedValue = map['dataSourceConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2modelsIntentQnaIntentConfigurationDataSourceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
