// ignore_for_file: unused_element, unnecessary_cast


/// Username and password for basic login authentication.
class BasicLoginInformation {
  /// Login password.
  final String? password;
  /// Login username.
  final String? username;

  /// Creates a new [BasicLoginInformation].
  /// [password] Login password.
  /// [username] Login username.
  BasicLoginInformation({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory BasicLoginInformation.fromMap(Map<String, dynamic> map) {
    return BasicLoginInformation(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

