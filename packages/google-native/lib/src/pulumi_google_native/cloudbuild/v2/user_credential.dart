// ignore_for_file: unused_element, unnecessary_cast

/// Represents a personal access token that authorized the Connection, and associated metadata.
class UserCredential {
  /// A SecretManager resource containing the user token that authorizes the Cloud Build connection. Format: `projects/*/secrets/*/versions/*`.
  final String userTokenSecretVersion;

  UserCredential({
    required this.userTokenSecretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userTokenSecretVersion'] = userTokenSecretVersion;
    return map;
  }

  factory UserCredential.fromMap(Map<String, dynamic> map) {
    return UserCredential(
      userTokenSecretVersion: map['userTokenSecretVersion'] as String,
    );
  }
}
