// ignore_for_file: unused_element, unnecessary_cast


class GetClusterCrossClusterReplicationConfigPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String cluster;
  /// The unique id of the primary cluster.
  final String uid;

  /// Creates a new [GetClusterCrossClusterReplicationConfigPrimaryCluster].
  /// [cluster] The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] The unique id of the primary cluster.
  GetClusterCrossClusterReplicationConfigPrimaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'uid': uid,
    };
  }

  factory GetClusterCrossClusterReplicationConfigPrimaryCluster.fromMap(Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigPrimaryCluster(
      cluster: map['cluster'] as String,
      uid: map['uid'] as String,
    );
  }
}

