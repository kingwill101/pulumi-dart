// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigSshPublicKeySshClientCertPass {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedAuthConfigOauth2AuthCodeFlow"" pulumi-lang-dotnet=""NestedAuthConfigOauth2AuthCodeFlow"" pulumi-lang-go=""nestedAuthConfigOauth2AuthCodeFlow"" pulumi-lang-python=""nested_auth_config_oauth2_auth_code_flow"" pulumi-lang-yaml=""nestedAuthConfigOauth2AuthCodeFlow"" pulumi-lang-java=""nestedAuthConfigOauth2AuthCodeFlow"">"nested_auth_config_oauth2_auth_code_flow"</span>></a>The <span pulumi-lang-nodejs="`oauth2AuthCodeFlow`" pulumi-lang-dotnet="`Oauth2AuthCodeFlow`" pulumi-lang-go="`oauth2AuthCodeFlow`" pulumi-lang-python="`oauth2_auth_code_flow`" pulumi-lang-yaml="`oauth2AuthCodeFlow`" pulumi-lang-java="`oauth2AuthCodeFlow`">`oauth2_auth_code_flow`</span> block supports:
  final String secretVersion;

  ConnectionAuthConfigSshPublicKeySshClientCertPass({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigSshPublicKeySshClientCertPass.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigSshPublicKeySshClientCertPass(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
