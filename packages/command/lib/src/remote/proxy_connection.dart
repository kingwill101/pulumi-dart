// ignore_for_file: unused_element, unnecessary_cast


/// Instructions for how to connect to a remote endpoint via a bastion host.
class ProxyConnection {
  /// SSH Agent socket path. Default to environment variable SSH_AUTH_SOCK if present.
  final String? agentSocketPath;
  /// Max allowed errors on trying to dial the remote host. -1 set count to unlimited. Default value is 10.
  final int? dialErrorLimit;
  /// The address of the bastion host to connect to.
  final String host;
  /// The expected host key to verify the server's identity. If not provided, the host key will be ignored.
  final String? hostKey;
  /// The password we should use for the connection to the bastion host.
  final String? password;
  /// Max number of seconds for each dial attempt. 0 implies no maximum. Default value is 15 seconds.
  final int? perDialTimeout;
  /// The port of the bastion host to connect to.
  final double? port;
  /// The contents of an SSH key to use for the connection. This takes preference over the password if provided.
  final String? privateKey;
  /// The password to use in case the private key is encrypted.
  final String? privateKeyPassword;
  /// The user that we should use for the connection to the bastion host.
  final String? user;

  /// Creates a new [ProxyConnection].
  /// [agentSocketPath] SSH Agent socket path. Default to environment variable SSH_AUTH_SOCK if present.
  /// [dialErrorLimit] Max allowed errors on trying to dial the remote host. -1 set count to unlimited. Default value is 10.
  /// [host] The address of the bastion host to connect to.
  /// [hostKey] The expected host key to verify the server's identity. If not provided, the host key will be ignored.
  /// [password] The password we should use for the connection to the bastion host.
  /// [perDialTimeout] Max number of seconds for each dial attempt. 0 implies no maximum. Default value is 15 seconds.
  /// [port] The port of the bastion host to connect to.
  /// [privateKey] The contents of an SSH key to use for the connection. This takes preference over the password if provided.
  /// [privateKeyPassword] The password to use in case the private key is encrypted.
  /// [user] The user that we should use for the connection to the bastion host.
  ProxyConnection({
    this.agentSocketPath,
    this.dialErrorLimit,
    required this.host,
    this.hostKey,
    this.password,
    this.perDialTimeout,
    this.port,
    this.privateKey,
    this.privateKeyPassword,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSocketPath': ?agentSocketPath,
      'dialErrorLimit': ?dialErrorLimit,
      'host': host,
      'hostKey': ?hostKey,
      'password': ?password,
      'perDialTimeout': ?perDialTimeout,
      'port': ?port,
      'privateKey': ?privateKey,
      'privateKeyPassword': ?privateKeyPassword,
      'user': ?user,
    };
  }

  factory ProxyConnection.fromMap(Map<String, dynamic> map) {
    return ProxyConnection(
      agentSocketPath: map['agentSocketPath'] == null ? null : map['agentSocketPath'] as String,
      dialErrorLimit: map['dialErrorLimit'] == null ? null : map['dialErrorLimit'] as int,
      host: map['host'] as String,
      hostKey: map['hostKey'] == null ? null : map['hostKey'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      perDialTimeout: map['perDialTimeout'] == null ? null : map['perDialTimeout'] as int,
      port: map['port'] == null ? null : map['port'] as double,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      privateKeyPassword: map['privateKeyPassword'] == null ? null : map['privateKeyPassword'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

