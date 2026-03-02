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
  DataSourceParametersOracle({
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
      database: (map['database'] as String).input(),
      host: (map['host'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

