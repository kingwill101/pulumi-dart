// ignore_for_file: unused_element, unnecessary_cast


class LinkedServiceOdbcBasicAuthentication {
  /// The password associated with the username, which can be used to authenticate to the ODBC endpoint.
  final String password;
  /// The username which can be used to authenticate to the ODBC endpoint.
  final String username;

  /// Creates a new [LinkedServiceOdbcBasicAuthentication].
  /// [password] The password associated with the username, which can be used to authenticate to the ODBC endpoint.
  /// [username] The username which can be used to authenticate to the ODBC endpoint.
  LinkedServiceOdbcBasicAuthentication({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory LinkedServiceOdbcBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdbcBasicAuthentication(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

