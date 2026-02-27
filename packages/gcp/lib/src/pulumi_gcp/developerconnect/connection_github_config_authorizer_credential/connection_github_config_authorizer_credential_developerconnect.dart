// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubConfigAuthorizerCredentialDeveloperconnect {
  /// Required. A SecretManager resource containing the OAuth token that authorizes
  /// the connection. Format: `projects/*/secrets/*/versions/*`.
  final String oauthTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final String? username;

  ConnectionGithubConfigAuthorizerCredentialDeveloperconnect({
    required this.oauthTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oauthTokenSecretVersion'] = oauthTokenSecretVersion;
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ConnectionGithubConfigAuthorizerCredentialDeveloperconnect.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubConfigAuthorizerCredentialDeveloperconnect(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
