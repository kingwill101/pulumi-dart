// ignore_for_file: unused_element, unnecessary_cast


class ConnectionProfileMongodbProfileHostAddress {
  /// Hostname for the connection.
  final String hostname;
  /// Port for the connection.
  final int? port;

  /// Creates a new [ConnectionProfileMongodbProfileHostAddress].
  /// [hostname] Hostname for the connection.
  /// [port] Port for the connection.
  ConnectionProfileMongodbProfileHostAddress({
    required this.hostname,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': ?port,
    };
  }

  factory ConnectionProfileMongodbProfileHostAddress.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileHostAddress(
      hostname: map['hostname'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

