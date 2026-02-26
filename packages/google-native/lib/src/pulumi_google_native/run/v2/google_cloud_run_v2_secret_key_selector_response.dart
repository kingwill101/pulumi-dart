// ignore_for_file: unused_element, unnecessary_cast

/// SecretEnvVarSource represents a source for the value of an EnvVar.
class GoogleCloudRunV2SecretKeySelectorResponse {
  /// The name of the secret in Cloud Secret Manager. Format: {secret_name} if the secret is in the same project. projects/{project}/secrets/{secret_name} if the secret is in a different project.
  final String secret;

  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest version, an integer for a specific version, or a version alias.
  final String version;

  GoogleCloudRunV2SecretKeySelectorResponse({
    required this.secret,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secret'] = secret;
    map['version'] = version;
    return map;
  }

  factory GoogleCloudRunV2SecretKeySelectorResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2SecretKeySelectorResponse(
      secret: map['secret'] as String,
      version: map['version'] as String,
    );
  }
}
