// ignore_for_file: unused_element, unnecessary_cast

class AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt {
  /// Instructions for interpreting the contents of the document.
  final String parsingPromptString;

  AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt({
    required this.parsingPromptString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parsingPromptString'] = parsingPromptString;
    return map;
  }

  factory AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPrompt(
      parsingPromptString: map['parsingPromptString'] as String,
    );
  }
}
