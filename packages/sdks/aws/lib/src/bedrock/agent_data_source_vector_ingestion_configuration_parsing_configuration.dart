// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_data_automation_configuration.dart';
import 'agent_data_source_vector_ingestion_configuration_parsing_configuration_bedrock_foundation_model_configuration.dart';

class AgentDataSourceVectorIngestionConfigurationParsingConfiguration {
  /// Settings for using Amazon Bedrock Data Automation to parse documents. See `bedrock_data_automation_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration>? bedrockDataAutomationConfiguration;
  /// Settings for a foundation model used to parse documents in a data source. See `bedrock_foundation_model_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration>? bedrockFoundationModelConfiguration;
  /// The parsing strategy to use. Valid values: `BEDROCK_FOUNDATION_MODEL`, `BEDROCK_DATA_AUTOMATION`.
  final pulumi.Input<String> parsingStrategy;

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
      'bedrockDataAutomationConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration, Map<String, dynamic>>(bedrockDataAutomationConfiguration, (value) => value.toMap()),
      'bedrockFoundationModelConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration, Map<String, dynamic>>(bedrockFoundationModelConfiguration, (value) => value.toMap()),
      'parsingStrategy': parsingStrategy,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfiguration(
      bedrockDataAutomationConfiguration: (() { final guardedValue = map['bedrockDataAutomationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bedrockFoundationModelConfiguration: (() { final guardedValue = map['bedrockFoundationModelConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parsingStrategy: pulumi.Input.fromValue(map['parsingStrategy'] as String),
    );
  }
}

