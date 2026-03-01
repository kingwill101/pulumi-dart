// ignore_for_file: unused_element, unnecessary_cast


/// TokenRequest contains parameters of a service account token.
class TokenRequest {
  /// audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final String audience;
  /// expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  final int? expirationSeconds;

  /// Creates a new [TokenRequest].
  /// [audience] audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  /// [expirationSeconds] expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  TokenRequest({
    required this.audience,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequest.fromMap(Map<String, dynamic> map) {
    return TokenRequest(
      audience: map['audience'] as String,
      expirationSeconds: map['expirationSeconds'] == null ? null : map['expirationSeconds'] as int,
    );
  }
}

