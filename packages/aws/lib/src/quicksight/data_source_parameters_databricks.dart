// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersDatabricks {
  /// The host name of the Databricks data source.
  final String host;

  /// The port for the Databricks data source.
  final int port;

  /// The HTTP path of the Databricks data source.
  final String sqlEndpointPath;

  /// Creates a new [DataSourceParametersDatabricks].
  /// [host] The host name of the Databricks data source.
  /// [port] The port for the Databricks data source.
  /// [sqlEndpointPath] The HTTP path of the Databricks data source.
  DataSourceParametersDatabricks({
    required this.host,
    required this.port,
    required this.sqlEndpointPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['port'] = port;
    map['sqlEndpointPath'] = sqlEndpointPath;
    return map;
  }

  factory DataSourceParametersDatabricks.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersDatabricks(
      host: map['host'] as String,
      port: map['port'] as int,
      sqlEndpointPath: map['sqlEndpointPath'] as String,
    );
  }
}
