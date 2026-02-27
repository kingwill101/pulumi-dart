// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response_connectors_v1.dart';

/// Parameters to support Username and Password Authentication.
class UserPasswordResponseConnectorsV1 {
  /// Secret version reference containing the password.
  final SecretResponseConnectorsV1 password;

  /// Username.
  final String username;

  UserPasswordResponseConnectorsV1({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password.toMap();
    map['username'] = username;
    return map;
  }

  factory UserPasswordResponseConnectorsV1.fromMap(Map<String, dynamic> map) {
    return UserPasswordResponseConnectorsV1(
      password: SecretResponseConnectorsV1.fromMap(
          (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
