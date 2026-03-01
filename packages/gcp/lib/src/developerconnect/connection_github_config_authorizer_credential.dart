// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGithubConfigAuthorizerCredential {
  /// Required. A SecretManager resource containing the OAuth token that authorizes
  /// the connection. Format: `projects/*/secrets/*/versions/*`.
  final String oauthTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final String? username;

  /// Creates a new [ConnectionGithubConfigAuthorizerCredential].
  /// [oauthTokenSecretVersion] Required. A SecretManager resource containing the OAuth token that authorizes
  /// [username] (Output)
  ConnectionGithubConfigAuthorizerCredential({
    required this.oauthTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthTokenSecretVersion': oauthTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionGithubConfigAuthorizerCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionGithubConfigAuthorizerCredential(
      oauthTokenSecretVersion: map['oauthTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
