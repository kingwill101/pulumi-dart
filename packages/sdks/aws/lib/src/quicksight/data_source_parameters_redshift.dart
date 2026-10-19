// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersRedshift {
  /// ID of the cluster to which to connect.
  final pulumi.Input<String?>? clusterId;
  /// Database to which to connect.
  final pulumi.Input<String> database;
  /// Host to which to connect.
  final pulumi.Input<String?>? host;
  /// Port to which to connect.
  final pulumi.Input<int?>? port;

  /// Creates a new [DataSourceParametersRedshift].
  /// [clusterId] ID of the cluster to which to connect.
  /// [database] Database to which to connect.
  /// [host] Host to which to connect.
  /// [port] Port to which to connect.
  const DataSourceParametersRedshift({
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
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
