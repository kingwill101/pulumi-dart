// ignore_for_file: unused_element, unnecessary_cast


class GradientaiAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GradientaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GradientaiAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GradientaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

