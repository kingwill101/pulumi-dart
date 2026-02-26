// ignore_for_file: unused_element, unnecessary_cast

/// Credential info for the Cloud SQL.
class CloudSqlCredentialResponse {
  /// The password for the credential.
  final String password;

  /// The username for the credential.
  final String username;

  CloudSqlCredentialResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory CloudSqlCredentialResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlCredentialResponse(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
