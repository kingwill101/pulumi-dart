// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersSqlServer {
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The host to which to connect.
  final pulumi.Input<String> host;
  /// The warehouse to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersSqlServer].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The warehouse to which to connect.
  const DataSourceParametersSqlServer({
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
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
