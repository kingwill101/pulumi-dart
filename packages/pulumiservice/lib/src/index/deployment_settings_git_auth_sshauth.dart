// ignore_for_file: unused_element, unnecessary_cast


/// Git source settings for a deployment.
class DeploymentSettingsGitAuthSSHAuth {
  /// Optional password for SSH authentication.
  final String? password;
  /// SSH private key.
  final String sshPrivateKey;

  /// Creates a new [DeploymentSettingsGitAuthSSHAuth].
  /// [password] Optional password for SSH authentication.
  /// [sshPrivateKey] SSH private key.
  DeploymentSettingsGitAuthSSHAuth({
    this.password,
    required this.sshPrivateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'sshPrivateKey': sshPrivateKey,
    };
  }

  factory DeploymentSettingsGitAuthSSHAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitAuthSSHAuth(
      password: map['password'] == null ? null : map['password'] as String,
      sshPrivateKey: map['sshPrivateKey'] as String,
    );
  }
}

