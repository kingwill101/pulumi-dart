// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceAuthConfigApiKeyConfigApiKey {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedAuthConfigOauth2ClientCredentialsConfig"" pulumi-lang-dotnet=""NestedAuthConfigOauth2ClientCredentialsConfig"" pulumi-lang-go=""nestedAuthConfigOauth2ClientCredentialsConfig"" pulumi-lang-python=""nested_auth_config_oauth2_client_credentials_config"" pulumi-lang-yaml=""nestedAuthConfigOauth2ClientCredentialsConfig"" pulumi-lang-java=""nestedAuthConfigOauth2ClientCredentialsConfig"">"nested_auth_config_oauth2_client_credentials_config"</span>></a>The <span pulumi-lang-nodejs="`oauth2ClientCredentialsConfig`" pulumi-lang-dotnet="`Oauth2ClientCredentialsConfig`" pulumi-lang-go="`oauth2ClientCredentialsConfig`" pulumi-lang-python="`oauth2_client_credentials_config`" pulumi-lang-yaml="`oauth2ClientCredentialsConfig`" pulumi-lang-java="`oauth2ClientCredentialsConfig`">`oauth2_client_credentials_config`</span> block supports:
  final String secretVersion;

  PluginInstanceAuthConfigApiKeyConfigApiKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory PluginInstanceAuthConfigApiKeyConfigApiKey.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceAuthConfigApiKeyConfigApiKey(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
