// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersMysql {
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The host to which to connect.
  final pulumi.Input<String> host;
  /// The port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersMysql].
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
  DataSourceParametersMysql({
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

  factory DataSourceParametersMysql.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersMysql(
      database: (map['database'] as String).input(),
      host: (map['host'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

