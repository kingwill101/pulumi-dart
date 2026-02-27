// ignore_for_file: unused_element, unnecessary_cast

import '../agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_foundation_model_configuration_parsing_prompt/agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_foundation_model_configuration_parsing_prompt.dart';

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration {
  /// The ARN of the model used to parse documents
  final String modelArn;

  /// Specifies whether to enable parsing of multimodal data, including both text and images. Valid values: `MULTIMODAL`.
  final String? parsingModality;

  /// Instructions for interpreting the contents of the document. See `parsing_prompt` block for details.
  final AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt?
      parsingPrompt;

  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration({
    required this.modelArn,
    this.parsingModality,
    this.parsingPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['modelArn'] = modelArn;
    final parsingModalityValue = parsingModality;
    if (parsingModalityValue != null) {
      map['parsingModality'] = parsingModalityValue;
    }
    final parsingPromptValue = parsingPrompt;
    if (parsingPromptValue != null) {
      map['parsingPrompt'] = parsingPromptValue.toMap();
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration(
      modelArn: map['modelArn'] as String,
      parsingModality: map['parsingModality'] == null
          ? null
          : map['parsingModality'] as String,
      parsingPrompt: map['parsingPrompt'] == null
          ? null
          : AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt
              .fromMap((map['parsingPrompt'] as Map).cast<String, dynamic>()),
    );
  }
}
