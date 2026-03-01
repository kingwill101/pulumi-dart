// ignore_for_file: unused_element, unnecessary_cast


/// Cluster properties of a server.
class Cluster {
  /// Number of nodes assigned to the elastic cluster.
  final int? clusterSize;
  /// Default database name for the elastic cluster.
  final String? defaultDatabaseName;

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
      clusterSize: map['clusterSize'] == null ? null : map['clusterSize'] as int,
      defaultDatabaseName: map['defaultDatabaseName'] == null ? null : map['defaultDatabaseName'] as String,
    );
  }
}

