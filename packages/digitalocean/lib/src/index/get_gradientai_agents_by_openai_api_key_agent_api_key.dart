// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsByOpenaiApiKeyAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

