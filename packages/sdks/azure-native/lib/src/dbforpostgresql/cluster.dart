// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster properties of a server.
class Cluster {
  /// Number of nodes assigned to the elastic cluster.
  final pulumi.Input<int>? clusterSize;
  /// Default database name for the elastic cluster.
  final pulumi.Input<String>? defaultDatabaseName;

  /// Creates a new [Cluster].
  /// [clusterSize] Number of nodes assigned to the elastic cluster.
  /// [defaultDatabaseName] Default database name for the elastic cluster.
  Cluster({
    this.clusterSize,
    this.defaultDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'defaultDatabaseName': ?defaultDatabaseName,
    };
  }

  factory Cluster.fromMap(Map<String, dynamic> map) {
    return Cluster(
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize']! as int).input(),
      defaultDatabaseName: map['defaultDatabaseName'] == null ? null : (map['defaultDatabaseName']! as String).input(),
    );
  }
}

