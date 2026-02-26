// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolOpenApiSpecAuthenticationOauthConfig {
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

  CxToolVersionToolOpenApiSpecAuthenticationOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    map['oauthGrantType'] = oauthGrantType;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    final secretVersionForClientSecretValue = secretVersionForClientSecret;
    if (secretVersionForClientSecretValue != null) {
      map['secretVersionForClientSecret'] = secretVersionForClientSecretValue;
    }
    map['tokenEndpoint'] = tokenEndpoint;
    return map;
  }

  factory CxToolVersionToolOpenApiSpecAuthenticationOauthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecAuthenticationOauthConfig(
      clientId: map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      oauthGrantType: map['oauthGrantType'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretVersionForClientSecret: map['secretVersionForClientSecret'] == null
          ? null
          : map['secretVersionForClientSecret'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}
