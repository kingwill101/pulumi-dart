// ignore_for_file: unused_element, unnecessary_cast


class GetSecretSecret {
  final Map<String, String>? context;
  final List<String>? grantTokens;
  final String name;
  final String payload;

  /// Creates a new [GetSecretSecret].
  /// [context] Optional.
  /// [grantTokens] Optional.
  /// [name] Required.
  /// [payload] Required.
  GetSecretSecret({
    this.context,
    this.grantTokens,
    required this.name,
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'grantTokens': ?grantTokens,
      'name': name,
      'payload': payload,
    };
  }

  factory GetSecretSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretSecret(
      context: map['context'] == null ? null : (map['context'] as Map).cast<String, String>(),
      grantTokens: map['grantTokens'] == null ? null : (map['grantTokens'] as List).cast<String>(),
      name: map['name'] as String,
      payload: map['payload'] as String,
    );
  }
}

