// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersOracle {
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The host to which to connect.
  final pulumi.Input<String> host;
  /// The port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersOracle].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
  const DataSourceParametersOracle({
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

  factory DataSourceParametersOracle.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersOracle(
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
