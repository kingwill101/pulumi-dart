// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster properties of a server.
class ClusterResponse {
  /// Number of nodes assigned to the elastic cluster.
  final pulumi.Input<int?>? clusterSize;
  /// Default database name for the elastic cluster.
  final pulumi.Input<String?>? defaultDatabaseName;

  /// Creates a new [ClusterResponse].
  /// [clusterSize] Number of nodes assigned to the elastic cluster.
  /// [defaultDatabaseName] Default database name for the elastic cluster.
  ClusterResponse({
    pulumi.Input<int?>? clusterSize,
    this.defaultDatabaseName,
  }) : clusterSize = clusterSize ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'defaultDatabaseName': ?defaultDatabaseName,
    };
  }

  factory ClusterResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResponse(
      clusterSize: (() { final guardedValue = map['clusterSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      defaultDatabaseName: (() { final guardedValue = map['defaultDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
