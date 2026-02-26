// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGitlabConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated to this token.
  final String? username;

  ConnectionGitlabConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userTokenSecretVersion'] = userTokenSecretVersion;
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ConnectionGitlabConfigReadAuthorizerCredential.fromMap(
      Map<String, dynamic> map) {
    return ConnectionGitlabConfigReadAuthorizerCredential(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
