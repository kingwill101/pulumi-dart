// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubConfigAuthorizerCredential {
  /// A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String? oauthTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated to this token.
  final String? username;

  /// Creates a new [ConnectionGithubConfigAuthorizerCredential].
  /// [oauthTokenSecretVersion] A SecretManager resource containing the OAuth token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] (Output)
  ConnectionGithubConfigAuthorizerCredential({
    this.oauthTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oauthTokenSecretVersionValue = oauthTokenSecretVersion;
    if (oauthTokenSecretVersionValue != null) {
      map['oauthTokenSecretVersion'] = oauthTokenSecretVersionValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ConnectionGithubConfigAuthorizerCredential.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGithubConfigAuthorizerCredential(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] == null
          ? null
          : map['oauthTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
