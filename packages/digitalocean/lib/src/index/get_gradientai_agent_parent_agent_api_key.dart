// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GetGradientaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GetGradientaiAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GetGradientaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

