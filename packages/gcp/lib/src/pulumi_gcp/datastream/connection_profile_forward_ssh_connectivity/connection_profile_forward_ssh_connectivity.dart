// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileForwardSshConnectivity {
  /// Hostname for the SSH tunnel.
  final String hostname;

  /// SSH password.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Port for the SSH tunnel.
  final int? port;

  /// SSH private key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? privateKey;

  /// Username for the SSH tunnel.
  final String username;

  ConnectionProfileForwardSshConnectivity({
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

  factory ConnectionProfileForwardSshConnectivity.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileForwardSshConnectivity(
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      privateKey:
          map['privateKey'] == null ? null : map['privateKey'] as String,
      username: map['username'] as String,
    );
  }
}
