// ignore_for_file: unused_element, unnecessary_cast


/// Microsoft EntraID client application secrets
class ClientApplicationSecretsContractResponseEntra {
  /// EntraID client application secret
  final String? clientSecret;
  /// EntraID client application secret expiration date.
  final String expiresAt;

  /// Creates a new [ClientApplicationSecretsContractResponseEntra].
  /// [clientSecret] EntraID client application secret
  /// [expiresAt] EntraID client application secret expiration date.
  ClientApplicationSecretsContractResponseEntra({
    this.clientSecret,
    required this.expiresAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
      'expiresAt': expiresAt,
    };
  }

  factory ClientApplicationSecretsContractResponseEntra.fromMap(Map<String, dynamic> map) {
    return ClientApplicationSecretsContractResponseEntra(
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      expiresAt: map['expiresAt'] as String,
    );
  }
}

