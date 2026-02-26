// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileMongodbProfileHostAddress {
  /// Hostname for the connection.
  final String hostname;

  /// Port for the connection.
  final int? port;

  ConnectionProfileMongodbProfileHostAddress({
    required this.hostname,
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory ConnectionProfileMongodbProfileHostAddress.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileHostAddress(
      hostname: map['hostname'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
