// ignore_for_file: unused_element, unnecessary_cast


class GradientaiAgentChildAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GradientaiAgentChildAgentApiKey].
  /// [apiKey] API Key value
  GradientaiAgentChildAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GradientaiAgentChildAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentChildAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

