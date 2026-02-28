// ignore_for_file: unused_element, unnecessary_cast


class ConnectionAuthConfigOauth2ClientCredentialsClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  /// Creates a new [ConnectionAuthConfigOauth2ClientCredentialsClientSecret].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionAuthConfigOauth2ClientCredentialsClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionAuthConfigOauth2ClientCredentialsClientSecret.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2ClientCredentialsClientSecret(
      secretVersion: map['secretVersion'] as String,
    );
  }
}

