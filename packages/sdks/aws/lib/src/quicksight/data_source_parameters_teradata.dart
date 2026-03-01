// ignore_for_file: unused_element, unnecessary_cast


class DataSourceParametersTeradata {
  /// The database to which to connect.
  final String database;
  /// The host to which to connect.
  final String host;
  /// The warehouse to which to connect.
  final int port;

  /// Creates a new [DataSourceParametersTeradata].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The warehouse to which to connect.
  DataSourceParametersTeradata({
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

  factory DataSourceParametersTeradata.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersTeradata(
      database: map['database'] as String,
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}

