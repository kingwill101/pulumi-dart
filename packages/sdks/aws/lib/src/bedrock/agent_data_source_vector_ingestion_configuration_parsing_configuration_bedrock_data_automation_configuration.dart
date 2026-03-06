// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration {
  /// Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  final pulumi.Input<String>? parsingModality;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration].
  /// [parsingModality] Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  const AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parsingModality': ?parsingModality,
    };
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration(
      parsingModality: (() { final guardedValue = map['parsingModality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

