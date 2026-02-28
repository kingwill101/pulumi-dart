// ignore_for_file: unused_element, unnecessary_cast

/// Configures fields for performing SSH authentication.
class SshAuthenticationConfigResponse {
  /// Content of a public SSH key to verify an identity of a remote Git host.
  final String hostPublicKey;

  /// The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  final String userPrivateKeySecretVersion;

  /// Creates a new [SshAuthenticationConfigResponse].
  /// [hostPublicKey] Content of a public SSH key to verify an identity of a remote Git host.
  /// [userPrivateKeySecretVersion] The name of the Secret Manager secret version to use as a ssh private key for Git operations. Must be in the format `projects/*/secrets/*/versions/*`.
  SshAuthenticationConfigResponse({
    required this.hostPublicKey,
    required this.userPrivateKeySecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostPublicKey'] = hostPublicKey;
    map['userPrivateKeySecretVersion'] = userPrivateKeySecretVersion;
    return map;
  }

  factory SshAuthenticationConfigResponse.fromMap(Map<String, dynamic> map) {
    return SshAuthenticationConfigResponse(
      hostPublicKey: map['hostPublicKey'] as String,
      userPrivateKeySecretVersion: map['userPrivateKeySecretVersion'] as String,
    );
  }
}
