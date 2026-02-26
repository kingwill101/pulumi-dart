// ignore_for_file: unused_element, unnecessary_cast

class ConnectionBitbucketCloudConfigAuthorizerCredential2 {
  /// Required. A SecretManager resource containing the user token that authorizes
  /// the Developer Connect connection. Format:
  /// `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  /// (Output)
  /// Output only. The username associated with this token.
  final String? username;

  ConnectionBitbucketCloudConfigAuthorizerCredential2({
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

  factory ConnectionBitbucketCloudConfigAuthorizerCredential2.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfigAuthorizerCredential2(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
