// ignore_for_file: unused_element, unnecessary_cast

/// Credential info for the Cloud SQL.
class CloudSqlCredentialResponse {
  /// The password for the credential.
  final String password;

  /// The username for the credential.
  final String username;

  /// Creates a new [CloudSqlCredentialResponse].
  /// [password] The password for the credential.
  /// [username] The username for the credential.
  CloudSqlCredentialResponse({required this.password, required this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory CloudSqlCredentialResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlCredentialResponse(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
