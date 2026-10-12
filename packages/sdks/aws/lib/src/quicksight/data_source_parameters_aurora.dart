// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersAurora {
  /// Database to which to connect.
  final pulumi.Input<String> database;
  /// Host to which to connect.
  final pulumi.Input<String> host;
  /// Port to which to connect.
  final pulumi.Input<int> port;

  /// Creates a new [DataSourceParametersAurora].
  /// [database] Database to which to connect.
  /// [host] Host to which to connect.
  /// [port] Port to which to connect.
  const DataSourceParametersAurora({
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

  factory DataSourceParametersAurora.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersAurora(
      database: pulumi.Input.fromValue(map['database'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
