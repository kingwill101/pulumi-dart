// ignore_for_file: unused_element, unnecessary_cast

import '../plugin_instance_auth_config_user_password_config_password/plugin_instance_auth_config_user_password_config_password.dart';

class PluginInstanceAuthConfigUserPasswordConfig {
  /// Secret provides a reference to entries in Secret Manager.
  /// Structure is documented below.
  final PluginInstanceAuthConfigUserPasswordConfigPassword password;

  /// Username.
  final String username;

  PluginInstanceAuthConfigUserPasswordConfig({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password.toMap();
    map['username'] = username;
    return map;
  }

  factory PluginInstanceAuthConfigUserPasswordConfig.fromMap(
      Map<String, dynamic> map) {
    return PluginInstanceAuthConfigUserPasswordConfig(
      password: PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap(
          (map['password'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
