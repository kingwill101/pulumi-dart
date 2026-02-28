// ignore_for_file: unused_element, unnecessary_cast

/// Represents a personal access token that authorized the Connection, and associated metadata.
class UserCredentialResponse {
  /// A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  /// The username associated to this token.
  final String username;

  /// Creates a new [UserCredentialResponse].
  /// [userTokenSecretVersion] A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  /// [username] The username associated to this token.
  UserCredentialResponse({
    required this.userTokenSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userTokenSecretVersion'] = userTokenSecretVersion;
    map['username'] = username;
    return map;
  }

  factory UserCredentialResponse.fromMap(Map<String, dynamic> map) {
    return UserCredentialResponse(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
      username: map['username'] as String,
    );
  }
}
