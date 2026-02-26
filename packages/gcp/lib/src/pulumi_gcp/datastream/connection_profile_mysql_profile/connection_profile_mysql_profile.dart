// ignore_for_file: unused_element, unnecessary_cast

import '../connection_profile_mysql_profile_ssl_config/connection_profile_mysql_profile_ssl_config.dart';

class ConnectionProfileMysqlProfile {
  /// Hostname for the MySQL connection.
  final String hostname;

  /// Password for the MySQL connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Port for the MySQL connection.
  final int? port;

  /// A reference to a Secret Manager resource name storing the user's password.
  final String? secretManagerStoredPassword;

  /// SSL configuration for the MySQL connection.
  /// Structure is documented below.
  final ConnectionProfileMysqlProfileSslConfig? sslConfig;

  /// Username for the MySQL connection.
  final String username;

  ConnectionProfileMysqlProfile({
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final secretManagerStoredPasswordValue = secretManagerStoredPassword;
    if (secretManagerStoredPasswordValue != null) {
      map['secretManagerStoredPassword'] = secretManagerStoredPasswordValue;
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = sslConfigValue.toMap();
    }
    map['username'] = username;
    return map;
  }

  factory ConnectionProfileMysqlProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysqlProfile(
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null
          ? null
          : map['secretManagerStoredPassword'] as String,
      sslConfig: map['sslConfig'] == null
          ? null
          : ConnectionProfileMysqlProfileSslConfig.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
