// ignore_for_file: unused_element, unnecessary_cast

import 'connection_eventing_config_auth_config_user_password_password.dart';

class ConnectionEventingConfigAuthConfigUserPassword {
  /// Password for Authentication.
  /// Structure is documented below.
  final ConnectionEventingConfigAuthConfigUserPasswordPassword? password;

  /// Username for Authentication.
  final String? username;

  /// Creates a new [ConnectionEventingConfigAuthConfigUserPassword].
  /// [password] Password for Authentication.
  /// [username] Username for Authentication.
  ConnectionEventingConfigAuthConfigUserPassword({
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

  factory ConnectionEventingConfigAuthConfigUserPassword.fromMap(
      Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfigUserPassword(
      password: map['password'] == null
          ? null
          : ConnectionEventingConfigAuthConfigUserPasswordPassword.fromMap(
              (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
