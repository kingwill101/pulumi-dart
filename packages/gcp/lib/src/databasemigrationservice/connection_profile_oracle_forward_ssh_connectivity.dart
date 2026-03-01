// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileOracleForwardSshConnectivity {
  /// Required. Hostname for the SSH tunnel.
  final String hostname;

  /// Input only. SSH password. Only one of `password` and `private_key` can be configured.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Port for the SSH tunnel, default value is 22.
  final int port;

  /// Input only. SSH private key. Only one of `password` and `private_key` can be configured.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? privateKey;

  /// Required. Username for the SSH tunnel.
  final String username;

  /// Creates a new [ConnectionProfileOracleForwardSshConnectivity].
  /// [hostname] Required. Hostname for the SSH tunnel.
  /// [password] Input only. SSH password. Only one of `password` and `private_key` can be configured.
  /// [port] Port for the SSH tunnel, default value is 22.
  /// [privateKey] Input only. SSH private key. Only one of `password` and `private_key` can be configured.
  /// [username] Required. Username for the SSH tunnel.
  ConnectionProfileOracleForwardSshConnectivity({
    required this.hostname,
    this.password,
    required this.port,
    this.privateKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': ?password,
      'port': port,
      'privateKey': ?privateKey,
      'username': username,
    };
  }

  factory ConnectionProfileOracleForwardSshConnectivity.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionProfileOracleForwardSshConnectivity(
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      privateKey: map['privateKey'] == null
          ? null
          : map['privateKey'] as String,
      username: map['username'] as String,
    );
  }
}
