// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigSshPublicKeySshClientCertPass {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  ///
  /// <a name="nested_auth_config_oauth2_auth_code_flow"></a>The `oauth2_auth_code_flow` block supports:
  final String secretVersion;

  /// Creates a new [ConnectionAuthConfigSshPublicKeySshClientCertPass].
  /// [secretVersion] The resource name of the secret version in the format,
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
