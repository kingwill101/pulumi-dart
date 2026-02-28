// ignore_for_file: unused_element, unnecessary_cast

class ProjectEnvironmentRegistryCredential {
  /// ARN or name of credentials created using AWS Secrets Manager.
  final String credential;

  /// Service that created the credentials to access a private Docker registry. Valid
  /// value: `SECRETS_MANAGER` (AWS Secrets Manager).
  final String credentialProvider;

  /// Creates a new [ProjectEnvironmentRegistryCredential].
  /// [credential] ARN or name of credentials created using AWS Secrets Manager.
  /// [credentialProvider] Service that created the credentials to access a private Docker registry. Valid
  ProjectEnvironmentRegistryCredential({
    required this.credential,
    required this.credentialProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credential'] = credential;
    map['credentialProvider'] = credentialProvider;
    return map;
  }

  factory ProjectEnvironmentRegistryCredential.fromMap(
      Map<String, dynamic> map) {
    return ProjectEnvironmentRegistryCredential(
      credential: map['credential'] as String,
      credentialProvider: map['credentialProvider'] as String,
    );
  }
}
