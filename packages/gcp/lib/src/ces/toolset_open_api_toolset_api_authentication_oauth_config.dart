// ignore_for_file: unused_element, unnecessary_cast

class ToolsetOpenApiToolsetApiAuthenticationOauthConfig {
  /// The client ID from the OAuth provider.
  final String clientId;

  /// The name of the SecretManager secret version resource storing the
  /// client secret.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String clientSecretVersion;

  /// OAuth grant types.
  /// Possible values:
  /// CLIENT_CREDENTIAL
  final String oauthGrantType;

  /// The OAuth scopes to grant.
  final List<String>? scopes;

  /// The token endpoint in the OAuth provider to exchange for an access token.
  final String tokenEndpoint;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationOauthConfig].
  /// [clientId] The client ID from the OAuth provider.
  /// [clientSecretVersion] The name of the SecretManager secret version resource storing the
  /// [oauthGrantType] OAuth grant types.
  /// [scopes] The OAuth scopes to grant.
  /// [tokenEndpoint] The token endpoint in the OAuth provider to exchange for an access token.
  ToolsetOpenApiToolsetApiAuthenticationOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientId'] = clientId;
    map['clientSecretVersion'] = clientSecretVersion;
    map['oauthGrantType'] = oauthGrantType;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    map['tokenEndpoint'] = tokenEndpoint;
    return map;
  }

  factory ToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationOauthConfig(
      clientId: map['clientId'] as String,
      clientSecretVersion: map['clientSecretVersion'] as String,
      oauthGrantType: map['oauthGrantType'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}
