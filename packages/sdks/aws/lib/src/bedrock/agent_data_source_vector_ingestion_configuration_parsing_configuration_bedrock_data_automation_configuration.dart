// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration {
  /// Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  final pulumi.Input<String>? parsingModality;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration].
  /// [parsingModality] Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parsingModality': ?parsingModality,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration(
      parsingModality: map['parsingModality'] == null ? null : ((map['parsingModality'] as String).input()).input(),
    );
  }
}

