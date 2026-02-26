// ignore_for_file: unused_element, unnecessary_cast

class ClusterStateInfoUpdateInfo {
  /// Target number of replica nodes per shard.
  final int? targetReplicaCount;

  /// Target number of shards for redis cluster.
  final int? targetShardCount;

  ClusterStateInfoUpdateInfo({
    this.targetReplicaCount,
    this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetReplicaCountValue = targetReplicaCount;
    if (targetReplicaCountValue != null) {
      map['targetReplicaCount'] = targetReplicaCountValue;
    }
    final targetShardCountValue = targetShardCount;
    if (targetShardCountValue != null) {
      map['targetShardCount'] = targetShardCountValue;
    }
    return map;
  }

  factory ClusterStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return ClusterStateInfoUpdateInfo(
      targetReplicaCount: map['targetReplicaCount'] == null
          ? null
          : map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] == null
          ? null
          : map['targetShardCount'] as int,
    );
  }
}
