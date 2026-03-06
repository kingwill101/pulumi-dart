// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIdentityProviderSecrets.
class ListIdentityProviderSecretsResult {
  /// Client or app secret used in IdentityProviders, Aad, OpenID or OAuth.
  final String? clientSecret;

  /// Creates a new [ListIdentityProviderSecretsResult].
  /// [clientSecret] Client or app secret used in IdentityProviders, Aad, OpenID or OAuth.
  const ListIdentityProviderSecretsResult({
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
    };
  }

  factory ListIdentityProviderSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListIdentityProviderSecretsResult(
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

