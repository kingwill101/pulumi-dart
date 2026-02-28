// ignore_for_file: unused_element, unnecessary_cast


class DataSourceParametersAuroraPostgresql {
  /// The database to which to connect.
  final String database;
  /// The host to which to connect.
  final String host;
  /// The port to which to connect.
  final int port;

  /// Creates a new [DataSourceParametersAuroraPostgresql].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
  DataSourceParametersAuroraPostgresql({
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

  factory DataSourceParametersAuroraPostgresql.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAuroraPostgresql(
      database: map['database'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

