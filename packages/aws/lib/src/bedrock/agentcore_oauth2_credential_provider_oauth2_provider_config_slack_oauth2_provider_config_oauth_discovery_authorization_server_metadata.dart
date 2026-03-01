// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata {
  /// OAuth2 authorization endpoint URL.
  final String authorizationEndpoint;

  /// OAuth2 authorization server issuer identifier.
  final String issuer;

  /// Set of OAuth2 response types supported by the authorization server.
  final List<String> responseTypes;

  /// OAuth2 token endpoint URL.
  final String tokenEndpoint;

  /// Creates a new [AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata].
  /// [authorizationEndpoint] OAuth2 authorization endpoint URL.
  /// [issuer] OAuth2 authorization server issuer identifier.
  /// [responseTypes] Set of OAuth2 response types supported by the authorization server.
  /// [tokenEndpoint] OAuth2 token endpoint URL.
  AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata({
    required this.authorizationEndpoint,
    required this.issuer,
    required this.responseTypes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'issuer': issuer,
      'responseTypes': responseTypes,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata(
      authorizationEndpoint: map['authorizationEndpoint'] as String,
      issuer: map['issuer'] as String,
      responseTypes: (map['responseTypes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}
