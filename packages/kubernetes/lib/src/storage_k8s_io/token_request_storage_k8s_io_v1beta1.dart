// ignore_for_file: unused_element, unnecessary_cast


/// TokenRequest contains parameters of a service account token.
class TokenRequestStorageK8sIoV1beta1 {
  /// Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final String audience;
  /// ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec"
  final int? expirationSeconds;

  /// Creates a new [TokenRequestStorageK8sIoV1beta1].
  /// [audience] Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  /// [expirationSeconds] ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec"
  TokenRequestStorageK8sIoV1beta1({
    required this.audience,
    this.expirationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'expirationSeconds': ?expirationSeconds,
    };
  }

  factory TokenRequestStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TokenRequestStorageK8sIoV1beta1(
      audience: map['audience'] as String,
      expirationSeconds: map['expirationSeconds'] == null ? null : map['expirationSeconds'] as int,
    );
  }
}

