// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersSnowflake {
  /// The database to which to connect.
  final String database;

  /// The host to which to connect.
  final String host;

  /// The warehouse to which to connect.
  final String warehouse;

  DataSourceParametersSnowflake({
    required this.database,
    required this.host,
    required this.warehouse,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['host'] = host;
    map['warehouse'] = warehouse;
    return map;
  }

  factory DataSourceParametersSnowflake.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersSnowflake(
      database: map['database'] as String,
      host: map['host'] as String,
      warehouse: map['warehouse'] as String,
    );
  }
}
