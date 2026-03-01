// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentsAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentsAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentsAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

