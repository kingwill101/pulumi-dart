// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration {
  /// Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  final String? parsingModality;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration].
  /// [parsingModality] Specifies whether to enable parsing of multimodal data, including both text and images. Valid value: `MULTIMODAL`.
  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration({
    this.parsingModality,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parsingModalityValue = parsingModality;
    if (parsingModalityValue != null) {
      map['parsingModality'] = parsingModalityValue;
    }
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockDataAutomationConfiguration(
      parsingModality: map['parsingModality'] == null
          ? null
          : map['parsingModality'] as String,
    );
  }
}
