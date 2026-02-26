// ignore_for_file: unused_element, unnecessary_cast

class ClusterCrossClusterReplicationConfigMembershipPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String? cluster;

  /// (Output)
  /// The unique id of the primary cluster.
  final String? uid;

  ClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
    this.cluster,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory ClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(
      Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfigMembershipPrimaryCluster(
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
