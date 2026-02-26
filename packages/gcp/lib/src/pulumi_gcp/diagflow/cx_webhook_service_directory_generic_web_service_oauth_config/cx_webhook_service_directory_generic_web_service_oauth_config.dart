// ignore_for_file: unused_element, unnecessary_cast

class CxWebhookServiceDirectoryGenericWebServiceOauthConfig {
  /// The client ID provided by the 3rd party platform.
  final String clientId;

  /// The client secret provided by the 3rd party platform.  If the
  /// <span pulumi-lang-nodejs="`secretVersionForClientSecret`" pulumi-lang-dotnet="`SecretVersionForClientSecret`" pulumi-lang-go="`secretVersionForClientSecret`" pulumi-lang-python="`secret_version_for_client_secret`" pulumi-lang-yaml="`secretVersionForClientSecret`" pulumi-lang-java="`secretVersionForClientSecret`">`secret_version_for_client_secret`</span> field is set, this field will be
  /// ignored.
  final String? clientSecret;

  /// The OAuth scopes to grant.
  final List<String>? scopes;

  /// The name of the SecretManager secret version resource storing the
  /// client secret. If this field is set, the <span pulumi-lang-nodejs="`clientSecret`" pulumi-lang-dotnet="`ClientSecret`" pulumi-lang-go="`clientSecret`" pulumi-lang-python="`client_secret`" pulumi-lang-yaml="`clientSecret`" pulumi-lang-java="`clientSecret`">`client_secret`</span> field will be
  /// ignored.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final String? secretVersionForClientSecret;

  /// The token endpoint provided by the 3rd party platform to exchange an
  /// access token.
  final String tokenEndpoint;

  CxWebhookServiceDirectoryGenericWebServiceOauthConfig({
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

  factory CxWebhookServiceDirectoryGenericWebServiceOauthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxWebhookServiceDirectoryGenericWebServiceOauthConfig(
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
