// ignore_for_file: unused_element, unnecessary_cast


/// Git source settings for a deployment.
class DeploymentSettingsGitAuthBasicAuth {
  /// Password for git basic authentication.
  final String password;
  /// User name for git basic authentication.
  final String username;

  /// Creates a new [DeploymentSettingsGitAuthBasicAuth].
  /// [password] Password for git basic authentication.
  /// [username] User name for git basic authentication.
  DeploymentSettingsGitAuthBasicAuth({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory DeploymentSettingsGitAuthBasicAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitAuthBasicAuth(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

