// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey {
  /// OpenAI API Key
  final String? apiKey;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey].
  /// [apiKey] OpenAI API Key
  GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

