// ignore_for_file: unused_element, unnecessary_cast

class DataSourceParametersRedshift {
  /// The ID of the cluster to which to connect.
  final String? clusterId;

  /// The database to which to connect.
  final String database;

  /// The host to which to connect.
  final String? host;

  /// The port to which to connect.
  final int? port;

  /// Creates a new [DataSourceParametersRedshift].
  /// [clusterId] The ID of the cluster to which to connect.
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
  DataSourceParametersRedshift({
    this.clusterId,
    required this.database,
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'database': database,
      'host': ?host,
      'port': ?port,
    };
  }

  factory DataSourceParametersRedshift.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersRedshift(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      database: map['database'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
