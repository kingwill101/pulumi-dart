// ignore_for_file: unused_element, unnecessary_cast

/// Configures fields for performing SSH authentication.
class SshAuthenticationConfig {
  /// Content of a public SSH key to verify an identity of a remote Git host.
  final String hostPublicKey;

  /// The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  final String userPrivateKeySecretVersion;

  /// Creates a new [SshAuthenticationConfig].
  /// [hostPublicKey] Content of a public SSH key to verify an identity of a remote Git host.
  /// [userPrivateKeySecretVersion] The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  SshAuthenticationConfig({
    required this.hostPublicKey,
    required this.userPrivateKeySecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostPublicKey'] = hostPublicKey;
    map['userPrivateKeySecretVersion'] = userPrivateKeySecretVersion;
    return map;
  }

  factory SshAuthenticationConfig.fromMap(Map<String, dynamic> map) {
    return SshAuthenticationConfig(
      hostPublicKey: map['hostPublicKey'] as String,
      userPrivateKeySecretVersion: map['userPrivateKeySecretVersion'] as String,
    );
  }
}
