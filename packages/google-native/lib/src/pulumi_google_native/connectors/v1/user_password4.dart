// ignore_for_file: unused_element, unnecessary_cast

import 'secret2.dart';

/// Parameters to support Username and Password Authentication.
class UserPassword4 {
  /// Secret version reference containing the password.
  final Secret2? password;

  /// Username.
  final String? username;

  UserPassword4({
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

  factory UserPassword4.fromMap(Map<String, dynamic> map) {
    return UserPassword4(
      password: map['password'] == null
          ? null
          : Secret2.fromMap((map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
