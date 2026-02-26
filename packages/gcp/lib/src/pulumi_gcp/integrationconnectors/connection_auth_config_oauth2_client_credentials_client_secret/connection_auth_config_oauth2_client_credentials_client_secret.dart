// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigOauth2ClientCredentialsClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  ConnectionAuthConfigOauth2ClientCredentialsClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigOauth2ClientCredentialsClientSecret.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2ClientCredentialsClientSecret(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
