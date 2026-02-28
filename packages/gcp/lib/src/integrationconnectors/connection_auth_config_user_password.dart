// ignore_for_file: unused_element, unnecessary_cast

import 'connection_auth_config_user_password_password.dart';

class ConnectionAuthConfigUserPassword {
  /// Password for Authentication.
  /// Structure is documented below.
  final ConnectionAuthConfigUserPasswordPassword? password;

  /// Username for Authentication.
  final String username;

  /// Creates a new [ConnectionAuthConfigUserPassword].
  /// [password] Password for Authentication.
  /// [username] Username for Authentication.
  ConnectionAuthConfigUserPassword({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue.toMap();
    }
    map['username'] = username;
    return map;
  }

  factory ConnectionAuthConfigUserPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigUserPassword(
      password: map['password'] == null
          ? null
          : ConnectionAuthConfigUserPasswordPassword.fromMap(
              (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
