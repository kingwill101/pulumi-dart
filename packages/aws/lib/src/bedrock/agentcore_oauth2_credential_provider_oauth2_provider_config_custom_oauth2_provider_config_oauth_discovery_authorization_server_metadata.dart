// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata {
  /// OAuth2 authorization endpoint URL.
  final String authorizationEndpoint;

  /// OAuth2 authorization server issuer identifier.
  final String issuer;

  /// Set of OAuth2 response types supported by the authorization server.
  final List<String>? responseTypes;

  /// OAuth2 token endpoint URL.
  final String tokenEndpoint;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata].
  /// [authorizationEndpoint] OAuth2 authorization endpoint URL.
  /// [issuer] OAuth2 authorization server issuer identifier.
  /// [responseTypes] Set of OAuth2 response types supported by the authorization server.
  /// [tokenEndpoint] OAuth2 token endpoint URL.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata({
    required this.authorizationEndpoint,
    required this.issuer,
    this.responseTypes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizationEndpoint'] = authorizationEndpoint;
    map['issuer'] = issuer;
    final responseTypesValue = responseTypes;
    if (responseTypesValue != null) {
      map['responseTypes'] = responseTypesValue;
    }
    map['tokenEndpoint'] = tokenEndpoint;
    return map;
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata(
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      issuer: map['issuer'] as String,
      responseTypes: map['responseTypes'] == null
          ? null
          : (map['responseTypes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}
