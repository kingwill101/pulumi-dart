// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceAuthConfigApiKeyConfigApiKey {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  ///
  /// <a name="nested_auth_config_oauth2_client_credentials_config"></a>The `oauth2_client_credentials_config` block supports:
  final String secretVersion;

  /// Creates a new [PluginInstanceAuthConfigApiKeyConfigApiKey].
  /// [secretVersion] The resource name of the secret version in the format,
  PluginInstanceAuthConfigApiKeyConfigApiKey({required this.secretVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory PluginInstanceAuthConfigApiKeyConfigApiKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceAuthConfigApiKeyConfigApiKey(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
