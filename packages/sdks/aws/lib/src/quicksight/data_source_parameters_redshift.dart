// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersRedshift {
  /// The ID of the cluster to which to connect.
  final pulumi.Input<String>? clusterId;
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The host to which to connect.
  final pulumi.Input<String>? host;
  /// The port to which to connect.
  final pulumi.Input<int>? port;

  /// Creates a new [DataSourceParametersRedshift].
  /// [clusterId] The ID of the cluster to which to connect.
  /// [database] The database to which to connect.
  /// [host] The host to which to connect.
  /// [port] The port to which to connect.
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
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

