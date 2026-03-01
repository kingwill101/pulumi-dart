// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsAgentChildAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

