// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt {
  /// Instructions for interpreting the contents of the document.
  final String parsingPromptString;

  /// Creates a new [AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt].
  /// [parsingPromptString] Instructions for interpreting the contents of the document.
  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt({
    required this.parsingPromptString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parsingPromptString': parsingPromptString};
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt(
      parsingPromptString: map['parsingPromptString'] as String,
    );
  }
}
