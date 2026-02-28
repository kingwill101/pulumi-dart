// ignore_for_file: unused_element, unnecessary_cast

/// Credential info for the Cloud SQL.
class CloudSqlCredential {
  /// The password for the credential.
  final String? password;

  /// The username for the credential.
  final String? username;

  /// Creates a new [CloudSqlCredential].
  /// [password] The password for the credential.
  /// [username] The username for the credential.
  CloudSqlCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory CloudSqlCredential.fromMap(Map<String, dynamic> map) {
    return CloudSqlCredential(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
