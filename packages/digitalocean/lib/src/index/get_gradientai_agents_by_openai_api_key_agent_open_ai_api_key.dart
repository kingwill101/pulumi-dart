// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey {
  /// OpenAI API Key
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

