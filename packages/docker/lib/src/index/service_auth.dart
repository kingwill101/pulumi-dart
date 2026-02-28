// ignore_for_file: unused_element, unnecessary_cast


class ServiceAuth {
  /// The password
  final String? password;
  /// The address of the server for the authentication
  final String serverAddress;
  /// The username
  final String? username;

  /// Creates a new [ServiceAuth].
  /// [password] The password
  /// [serverAddress] The address of the server for the authentication
  /// [username] The username
  ServiceAuth({
    this.password,
    required this.serverAddress,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'serverAddress': serverAddress,
      'username': ?username,
    };
  }

  factory ServiceAuth.fromMap(Map<String, dynamic> map) {
    return ServiceAuth(
      password: map['password'] == null ? null : map['password'] as String,
      serverAddress: map['serverAddress'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

