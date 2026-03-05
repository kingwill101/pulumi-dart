// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersTeradata {
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The host to which to connect.
  final pulumi.Input<String> host;
  /// The warehouse to which to connect.
  final pulumi.Input<int> port;

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
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

