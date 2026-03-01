// ignore_for_file: unused_element, unnecessary_cast


class AdministrativeCredentials {
  /// The password of the administrator of the device used during initialization.
  final String password;
  /// The username of the administrator of the device used during initialization.
  final String username;

  /// Creates a new [AdministrativeCredentials].
  /// [password] The password of the administrator of the device used during initialization.
  /// [username] The username of the administrator of the device used during initialization.
  AdministrativeCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory AdministrativeCredentials.fromMap(Map<String, dynamic> map) {
    return AdministrativeCredentials(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

