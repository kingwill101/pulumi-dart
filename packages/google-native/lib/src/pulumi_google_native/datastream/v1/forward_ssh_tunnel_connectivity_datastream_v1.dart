// ignore_for_file: unused_element, unnecessary_cast

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityDatastreamV1 {
  /// Hostname for the SSH tunnel.
  final String hostname;

  /// Input only. SSH password.
  final String? password;

  /// Port for the SSH tunnel, default value is 22.
  final int? port;

  /// Input only. SSH private key.
  final String? privateKey;

  /// Username for the SSH tunnel.
  final String username;

  ForwardSshTunnelConnectivityDatastreamV1({
    required this.hostname,
    this.password,
    this.port,
    this.privateKey,
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
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    map['username'] = username;
    return map;
  }

  factory ForwardSshTunnelConnectivityDatastreamV1.fromMap(
      Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityDatastreamV1(
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      username: map['username'] as String,
    );
  }
}
