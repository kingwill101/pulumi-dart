// ignore_for_file: unused_element, unnecessary_cast

class ConnectionGitlabEnterpriseConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes
  /// the Developer Connect connection. Format:
  /// `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final String? username;

  /// Creates a new [ConnectionGitlabEnterpriseConfigReadAuthorizerCredential].
  /// [userTokenSecretVersion] Required. A SecretManager resource containing the user token that authorizes
  /// [username] (Output)
  ConnectionGitlabEnterpriseConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userTokenSecretVersion': userTokenSecretVersion,
      'username': ?username,
    };
  }

  factory ConnectionGitlabEnterpriseConfigReadAuthorizerCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionGitlabEnterpriseConfigReadAuthorizerCredential(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
