// ignore_for_file: unused_element, unnecessary_cast

class PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  final String secretVersion;

  PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceAuthConfigOauth2ClientCredentialsConfigClientSecret(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
