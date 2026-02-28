// ignore_for_file: unused_element, unnecessary_cast

class ConnectionBitbucketDataCenterConfigReadAuthorizerCredential {
  /// Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated to this token.
  final String? username;

  /// Creates a new [ConnectionBitbucketDataCenterConfigReadAuthorizerCredential].
  /// [userTokenSecretVersion] Required. A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] (Output)
  ConnectionBitbucketDataCenterConfigReadAuthorizerCredential({
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

  factory ConnectionBitbucketDataCenterConfigReadAuthorizerCredential.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfigReadAuthorizerCredential(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
