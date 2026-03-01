// ignore_for_file: unused_element, unnecessary_cast

class ClusterCrossClusterReplicationConfigSecondaryCluster {
  /// (Output)
  /// The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String? cluster;

  /// (Output)
  /// The unique id of the secondary cluster.
  final String? uid;

  /// Creates a new [ClusterCrossClusterReplicationConfigSecondaryCluster].
  /// [cluster] (Output)
  /// [uid] (Output)
  ClusterCrossClusterReplicationConfigSecondaryCluster({
    this.cluster,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cluster': ?cluster, 'uid': ?uid};
  }

  factory ClusterCrossClusterReplicationConfigSecondaryCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterCrossClusterReplicationConfigSecondaryCluster(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
