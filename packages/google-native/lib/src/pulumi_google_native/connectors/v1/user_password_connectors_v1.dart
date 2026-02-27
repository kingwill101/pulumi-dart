// ignore_for_file: unused_element, unnecessary_cast

import 'secret_connectors_v1.dart';

/// Parameters to support Username and Password Authentication.
class UserPasswordConnectorsV1 {
  /// Secret version reference containing the password.
  final SecretConnectorsV1? password;

  /// Username.
  final String? username;

  UserPasswordConnectorsV1({
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

  factory UserPasswordConnectorsV1.fromMap(Map<String, dynamic> map) {
    return UserPasswordConnectorsV1(
      password: map['password'] == null
          ? null
          : SecretConnectorsV1.fromMap(
              (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
