// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response.dart';

/// Parameters to support Username and Password Authentication.
class UserPasswordResponse {
  /// Secret version reference containing the password.
  final SecretResponse password;

  /// Username.
  final String username;

  /// Creates a new [UserPasswordResponse].
  /// [password] Secret version reference containing the password.
  /// [username] Username.
  UserPasswordResponse({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password.toMap();
    map['username'] = username;
    return map;
  }

  factory UserPasswordResponse.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponse(
      password: SecretResponse.fromMap(
          (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
