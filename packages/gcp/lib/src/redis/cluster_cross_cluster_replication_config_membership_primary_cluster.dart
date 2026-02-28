// ignore_for_file: unused_element, unnecessary_cast


class ClusterCrossClusterReplicationConfigMembershipPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String? cluster;
  /// (Output)
  /// The unique id of the primary cluster.
  final String? uid;

  /// Creates a new [ClusterCrossClusterReplicationConfigMembershipPrimaryCluster].
  /// [cluster] The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] (Output)
  ClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
    this.cluster,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'uid': ?uid,
    };
  }

  factory ClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfigMembershipPrimaryCluster(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

