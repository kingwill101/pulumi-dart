// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster properties of a server.
class ClusterResponse {
  /// Number of nodes assigned to the elastic cluster.
  final pulumi.Input<int>? clusterSize;
  /// Default database name for the elastic cluster.
  final pulumi.Input<String>? defaultDatabaseName;

  /// Creates a new [ClusterResponse].
  /// [clusterSize] Number of nodes assigned to the elastic cluster.
  /// [defaultDatabaseName] Default database name for the elastic cluster.
  ClusterResponse({
    this.clusterSize,
    this.defaultDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSize': ?clusterSize,
      'defaultDatabaseName': ?defaultDatabaseName,
    };
  }

  factory ClusterResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResponse(
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize'] as int).input(),
      defaultDatabaseName: map['defaultDatabaseName'] == null ? null : (map['defaultDatabaseName'] as String).input(),
    );
  }
}

