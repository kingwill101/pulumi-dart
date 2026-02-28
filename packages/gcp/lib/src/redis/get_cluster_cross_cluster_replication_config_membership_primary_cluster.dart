// ignore_for_file: unused_element, unnecessary_cast

class GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String cluster;

  /// The unique id of the primary cluster.
  final String uid;

  /// Creates a new [GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster].
  /// [cluster] The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] The unique id of the primary cluster.
  GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['uid'] = uid;
    return map;
  }

  factory GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(
      Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster(
      cluster: map['cluster'] as String,
      uid: map['uid'] as String,
    );
  }
}
