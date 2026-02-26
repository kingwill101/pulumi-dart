// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response2.dart';

/// Parameters to support Username and Password Authentication.
class UserPasswordResponse4 {
  /// Secret version reference containing the password.
  final SecretResponse2 password;

  /// Username.
  final String username;

  UserPasswordResponse4({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password.toMap();
    map['username'] = username;
    return map;
  }

  factory UserPasswordResponse4.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponse4(
      password: SecretResponse2.fromMap(
          (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
