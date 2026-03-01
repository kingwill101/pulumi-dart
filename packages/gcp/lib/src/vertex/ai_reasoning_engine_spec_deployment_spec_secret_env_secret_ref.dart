// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef {
  /// The name of the secret in Cloud Secret Manager.
  /// Format: {secret_name}.
  final String secret;

  /// The Cloud Secret Manager secret version. Can be 'latest'
  /// for the latest version, an integer for a specific
  /// version, or a version alias.
  final String? version;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef].
  /// [secret] The name of the secret in Cloud Secret Manager.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest'
  AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef({
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secret': secret, 'version': ?version};
  }

  factory AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiReasoningEngineSpecDeploymentSpecSecretEnvSecretRef(
      secret: map['secret'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
