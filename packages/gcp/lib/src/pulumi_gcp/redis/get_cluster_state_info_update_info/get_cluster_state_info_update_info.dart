// ignore_for_file: unused_element, unnecessary_cast

class GetClusterStateInfoUpdateInfo {
  /// Target number of replica nodes per shard.
  final int targetReplicaCount;

  /// Target number of shards for redis cluster.
  final int targetShardCount;

  GetClusterStateInfoUpdateInfo({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReplicaCount'] = targetReplicaCount;
    map['targetShardCount'] = targetShardCount;
    return map;
  }

  factory GetClusterStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterStateInfoUpdateInfo(
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}
