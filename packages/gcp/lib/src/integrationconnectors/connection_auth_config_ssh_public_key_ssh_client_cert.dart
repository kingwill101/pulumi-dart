// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigSshPublicKeySshClientCert {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  /// Creates a new [ConnectionAuthConfigSshPublicKeySshClientCert].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionAuthConfigSshPublicKeySshClientCert({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigSshPublicKeySshClientCert.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigSshPublicKeySshClientCert(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
