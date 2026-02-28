// ignore_for_file: unused_element, unnecessary_cast

import 'agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_data_automation_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_foundation_model_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationParsingConfiguration {
  /// Settings for using Amazon Bedrock Data Automation to parse documents. See `bedrock_data_automation_configuration` block for details.
  final AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration? bedrockDataAutomationConfiguration;
  /// Settings for a foundation model used to parse documents in a data source. See `bedrock_foundation_model_configuration` block for details.
  final AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration? bedrockFoundationModelConfiguration;
  /// The parsing strategy to use. Valid values: `BEDROCK_FOUNDATION_MODEL`, `BEDROCK_DATA_AUTOMATION`.
  final String parsingStrategy;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfiguration].
  /// [bedrockDataAutomationConfiguration] Settings for using Amazon Bedrock Data Automation to parse documents. See `bedrock_data_automation_configuration` block for details.
  /// [bedrockFoundationModelConfiguration] Settings for a foundation model used to parse documents in a data source. See `bedrock_foundation_model_configuration` block for details.
  /// [parsingStrategy] The parsing strategy to use. Valid values: `BEDROCK_FOUNDATION_MODEL`, `BEDROCK_DATA_AUTOMATION`.
  AgentDataSourceVectorIngestionConfigurationParsingConfiguration({
    this.bedrockDataAutomationConfiguration,
    this.bedrockFoundationModelConfiguration,
    required this.parsingStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bedrockDataAutomationConfiguration': ?bedrockDataAutomationConfiguration == null ? null : bedrockDataAutomationConfiguration!.toMap(),
      'bedrockFoundationModelConfiguration': ?bedrockFoundationModelConfiguration == null ? null : bedrockFoundationModelConfiguration!.toMap(),
      'parsingStrategy': parsingStrategy,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfiguration(
      bedrockDataAutomationConfiguration: map['bedrockDataAutomationConfiguration'] == null ? null : AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration.fromMap((map['bedrockDataAutomationConfiguration'] as Map).cast<String, dynamic>()),
      bedrockFoundationModelConfiguration: map['bedrockFoundationModelConfiguration'] == null ? null : AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration.fromMap((map['bedrockFoundationModelConfiguration'] as Map).cast<String, dynamic>()),
      parsingStrategy: map['parsingStrategy'] as String,
    );
  }
}

