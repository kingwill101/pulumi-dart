// ignore_for_file: unused_element, unnecessary_cast


/// Cluster properties of a server.
class ClusterResponse {
  /// Number of nodes assigned to the elastic cluster.
  final int? clusterSize;
  /// Default database name for the elastic cluster.
  final String? defaultDatabaseName;

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
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as int,
      defaultDatabaseName: map['defaultDatabaseName'] == null ? null : map['defaultDatabaseName'] as String,
    );
  }
}

