// ignore_for_file: unused_element, unnecessary_cast

class GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster {
  /// The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String cluster;

  /// The unique id of the secondary cluster.
  final String uid;

  GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['uid'] = uid;
    return map;
  }

  factory GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster.fromMap(
      Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster(
      cluster: map['cluster'] as String,
      uid: map['uid'] as String,
    );
  }
}
