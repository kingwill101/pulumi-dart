// ignore_for_file: unused_element, unnecessary_cast


class DataSourceParametersSqlServer {
  /// The database to which to connect.
  final String database;
  /// The host to which to connect.
  final String host;
  /// The warehouse to which to connect.
  final int port;

  /// Creates a new [DataSourceParametersSqlServer].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The warehouse to which to connect.
  DataSourceParametersSqlServer({
    required this.database,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'host': host,
      'port': port,
    };
  }

  factory DataSourceParametersSqlServer.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSqlServer(
      database: map['database'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

