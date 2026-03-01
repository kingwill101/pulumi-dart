// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listOpenIdConnectProviderSecrets.
class ListOpenIdConnectProviderSecretsResult {
  /// Client or app secret used in IdentityProviders, Aad, OpenID or OAuth.
  final String? clientSecret;

  /// Creates a new [ListOpenIdConnectProviderSecretsResult].
  /// [clientSecret] Client or app secret used in IdentityProviders, Aad, OpenID or OAuth.
  ListOpenIdConnectProviderSecretsResult({
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
    };
  }

  factory ListOpenIdConnectProviderSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListOpenIdConnectProviderSecretsResult(
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
    );
  }
}

