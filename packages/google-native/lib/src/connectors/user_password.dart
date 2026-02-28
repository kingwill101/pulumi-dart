// ignore_for_file: unused_element, unnecessary_cast

import 'secret.dart';

/// Parameters to support Username and Password Authentication.
class UserPassword {
  /// Secret version reference containing the password.
  final Secret? password;

  /// Username.
  final String? username;

  /// Creates a new [UserPassword].
  /// [password] Secret version reference containing the password.
  /// [username] Username.
  UserPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue.toMap();
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory UserPassword.fromMap(Map<String, dynamic> map) {
    return UserPassword(
      password: map['password'] == null
          ? null
          : Secret.fromMap((map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
