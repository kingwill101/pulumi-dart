// ignore_for_file: unused_element, unnecessary_cast

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityResponse3 {
  /// Hostname for the SSH tunnel.
  final String hostname;

  /// Input only. SSH password.
  final String password;

  /// Port for the SSH tunnel, default value is 22.
  final int port;

  /// Input only. SSH private key.
  final String privateKey;

  /// Username for the SSH tunnel.
  final String username;

  ForwardSshTunnelConnectivityResponse3({
    required this.hostname,
    required this.password,
    required this.port,
    required this.privateKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    map['password'] = password;
    map['port'] = port;
    map['privateKey'] = privateKey;
    map['username'] = username;
    return map;
  }

  factory ForwardSshTunnelConnectivityResponse3.fromMap(
      Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityResponse3(
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateKey: map['privateKey'] as String,
      username: map['username'] as String,
    );
  }
}
