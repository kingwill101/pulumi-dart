// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubConfigAuthorizerCredential2 {
  /// Required. A SecretManager resource containing the OAuth token that authorizes
  /// the connection. Format: `projects/*/secrets/*/versions/*`.
  final String oauthTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final String? username;

  ConnectionGithubConfigAuthorizerCredential2({
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

  factory ConnectionGithubConfigAuthorizerCredential2.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubConfigAuthorizerCredential2(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
