// ignore_for_file: unused_element, unnecessary_cast

class CxWebhookGenericWebServiceOauthConfig {
  /// The client ID provided by the 3rd party platform.
  final String clientId;

  /// The client secret provided by the 3rd party platform.  If the
  /// `secret_version_for_client_secret` field is set, this field will be
  /// ignored.
  final String? clientSecret;

  /// The OAuth scopes to grant.
  final List<String>? scopes;

  /// The name of the SecretManager secret version resource storing the
  /// client secret. If this field is set, the `client_secret` field will be
  /// ignored.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final String? secretVersionForClientSecret;

  /// The token endpoint provided by the 3rd party platform to exchange an
  /// access token.
  final String tokenEndpoint;

  /// Creates a new [CxWebhookGenericWebServiceOauthConfig].
  /// [clientId] The client ID provided by the 3rd party platform.
  /// [clientSecret] The client secret provided by the 3rd party platform.  If the
  /// [scopes] The OAuth scopes to grant.
  /// [secretVersionForClientSecret] The name of the SecretManager secret version resource storing the
  /// [tokenEndpoint] The token endpoint provided by the 3rd party platform to exchange an
  CxWebhookGenericWebServiceOauthConfig({
    required this.clientId,
    this.clientSecret,
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

  factory CxWebhookGenericWebServiceOauthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceOauthConfig(
      clientId: map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      secretVersionForClientSecret: map['secretVersionForClientSecret'] == null
          ? null
          : map['secretVersionForClientSecret'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}
