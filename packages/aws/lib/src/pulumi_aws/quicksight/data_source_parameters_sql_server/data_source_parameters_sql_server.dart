// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersSqlServer {
  /// The database to which to connect.
  final String database;

  /// The host to which to connect.
  final String host;

  /// The warehouse to which to connect.
  final int port;

  DataSourceParametersSqlServer({
    required this.database,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory DataSourceParametersSqlServer.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSqlServer(
      database: map['database'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
