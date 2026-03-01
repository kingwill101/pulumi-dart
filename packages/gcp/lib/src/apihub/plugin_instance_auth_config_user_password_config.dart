// ignore_for_file: unused_element, unnecessary_cast

import 'plugin_instance_auth_config_user_password_config_password.dart';

class PluginInstanceAuthConfigUserPasswordConfig {
  /// Secret provides a reference to entries in Secret Manager.
  /// Structure is documented below.
  final PluginInstanceAuthConfigUserPasswordConfigPassword password;

  /// Username.
  final String username;

  /// Creates a new [PluginInstanceAuthConfigUserPasswordConfig].
  /// [password] Secret provides a reference to entries in Secret Manager.
  /// [username] Username.
  PluginInstanceAuthConfigUserPasswordConfig({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password.toMap(),
      'username': username,
    };
  }

  factory PluginInstanceAuthConfigUserPasswordConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceAuthConfigUserPasswordConfig(
      password: PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap(
        (map['password'] as Map).cast<String, dynamic>(),
      ),
      username: map['username'] as String,
    );
  }
}
