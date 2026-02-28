// ignore_for_file: unused_element, unnecessary_cast

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityResponseDatastreamV1alpha1 {
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

  /// Creates a new [ForwardSshTunnelConnectivityResponseDatastreamV1alpha1].
  /// [hostname] Hostname for the SSH tunnel.
  /// [password] Input only. SSH password.
  /// [port] Port for the SSH tunnel, default value is 22.
  /// [privateKey] Input only. SSH private key.
  /// [username] Username for the SSH tunnel.
  ForwardSshTunnelConnectivityResponseDatastreamV1alpha1({
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

  factory ForwardSshTunnelConnectivityResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityResponseDatastreamV1alpha1(
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateKey: map['privateKey'] as String,
      username: map['username'] as String,
    );
  }
}
