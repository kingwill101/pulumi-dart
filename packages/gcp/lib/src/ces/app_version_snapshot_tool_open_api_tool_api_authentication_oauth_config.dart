// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig {
  /// (Output)
  /// The client ID from the OAuth provider.
  final String? clientId;

  /// (Output)
  /// The name of the SecretManager secret version resource storing the
  /// client secret.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final String? clientSecretVersion;

  /// (Output)
  /// OAuth grant types.
  /// Possible values:
  /// CLIENT_CREDENTIAL
  final String? oauthGrantType;

  /// (Output)
  /// The OAuth scopes to grant.
  final List<String>? scopes;

  /// (Output)
  /// The token endpoint in the OAuth provider to exchange for an access token.
  final String? tokenEndpoint;

  /// Creates a new [AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig].
  /// [clientId] (Output)
  /// [clientSecretVersion] (Output)
  /// [oauthGrantType] (Output)
  /// [scopes] (Output)
  /// [tokenEndpoint] (Output)
  AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig({
    this.clientId,
    this.clientSecretVersion,
    this.oauthGrantType,
    this.scopes,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretVersion': ?clientSecretVersion,
      'oauthGrantType': ?oauthGrantType,
      'scopes': ?scopes,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecretVersion: map['clientSecretVersion'] == null
          ? null
          : map['clientSecretVersion'] as String,
      oauthGrantType: map['oauthGrantType'] == null
          ? null
          : map['oauthGrantType'] as String,
      scopes: map['scopes'] == null
          ? null
          : (map['scopes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] == null
          ? null
          : map['tokenEndpoint'] as String,
    );
  }
}
