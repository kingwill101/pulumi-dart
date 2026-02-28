// ignore_for_file: unused_element, unnecessary_cast


class CxToolOpenApiSpecAuthenticationOauthConfig {
  /// The client ID from the OAuth provider.
  final String clientId;
  /// Optional. The client secret from the OAuth provider. If the `secretVersionForClientSecret` field is set, this field will be ignored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? clientSecret;
  /// OAuth grant types.
  /// See [OauthGrantType](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#oauthgranttype) for valid values
  final String oauthGrantType;
  /// Optional. The OAuth scopes to grant.
  final List<String>? scopes;
  /// Optional. The name of the SecretManager secret version resource storing the client secret.
  /// If this field is set, the clientSecret field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final String? secretVersionForClientSecret;
  /// The token endpoint in the OAuth provider to exchange for an access token.
  final String tokenEndpoint;

  /// Creates a new [CxToolOpenApiSpecAuthenticationOauthConfig].
  /// [clientId] The client ID from the OAuth provider.
  /// [clientSecret] Optional. The client secret from the OAuth provider. If the `secretVersionForClientSecret` field is set, this field will be ignored.
  /// [oauthGrantType] OAuth grant types.
  /// [scopes] Optional. The OAuth scopes to grant.
  /// [secretVersionForClientSecret] Optional. The name of the SecretManager secret version resource storing the client secret.
  /// [tokenEndpoint] The token endpoint in the OAuth provider to exchange for an access token.
  CxToolOpenApiSpecAuthenticationOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'oauthGrantType': oauthGrantType,
      'scopes': ?scopes,
      'secretVersionForClientSecret': ?secretVersionForClientSecret,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory CxToolOpenApiSpecAuthenticationOauthConfig.fromMap(Map<String, dynamic> map) {
    return CxToolOpenApiSpecAuthenticationOauthConfig(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      oauthGrantType: map['oauthGrantType'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretVersionForClientSecret: map['secretVersionForClientSecret'] == null ? null : map['secretVersionForClientSecret'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}

