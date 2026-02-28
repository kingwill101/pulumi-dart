// ignore_for_file: unused_element, unnecessary_cast

class DataSourceCredentialsCredentialPair {
  /// Password, maximum length of 1024 characters.
  final String password;

  /// User name, maximum length of 64 characters.
  final String username;

  /// Creates a new [DataSourceCredentialsCredentialPair].
  /// [password] Password, maximum length of 1024 characters.
  /// [username] User name, maximum length of 64 characters.
  DataSourceCredentialsCredentialPair({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory DataSourceCredentialsCredentialPair.fromMap(
      Map<String, dynamic> map) {
    return DataSourceCredentialsCredentialPair(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
