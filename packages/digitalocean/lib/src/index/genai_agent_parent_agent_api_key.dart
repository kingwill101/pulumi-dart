// ignore_for_file: unused_element, unnecessary_cast


class GenaiAgentParentAgentApiKey {
  /// API Key value
  final String? apiKey;

  /// Creates a new [GenaiAgentParentAgentApiKey].
  /// [apiKey] API Key value
  GenaiAgentParentAgentApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory GenaiAgentParentAgentApiKey.fromMap(Map<String, dynamic> map) {
    return GenaiAgentParentAgentApiKey(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
    );
  }
}

