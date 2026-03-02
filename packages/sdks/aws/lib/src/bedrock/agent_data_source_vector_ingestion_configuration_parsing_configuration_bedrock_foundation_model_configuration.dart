// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_foundation_model_configuration_parsing_prompt.dart';

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration {
  /// The ARN of the model used to parse documents
  final pulumi.Input<String> modelArn;
  /// Specifies whether to enable parsing of multimodal data, including both text and images. Valid values: `MULTIMODAL`.
  final pulumi.Input<String>? parsingModality;
  /// Instructions for interpreting the contents of the document. See `parsing_prompt` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt>? parsingPrompt;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration].
  /// [modelArn] The ARN of the model used to parse documents
  /// [parsingModality] Specifies whether to enable parsing of multimodal data, including both text and images. Valid values: `MULTIMODAL`.
  /// [parsingPrompt] Instructions for interpreting the contents of the document. See `parsing_prompt` block for details.
  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration({
    required this.modelArn,
    this.parsingModality,
    this.parsingPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelArn': modelArn,
      'parsingModality': ?parsingModality,
      'parsingPrompt': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt, Map<String, dynamic>>(parsingPrompt, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration(
      modelArn: (map['modelArn'] as String).input(),
      parsingModality: map['parsingModality'] == null ? null : (map['parsingModality'] as String).input(),
      parsingPrompt: map['parsingPrompt'] == null ? null : (AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt.fromMap((map['parsingPrompt'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

