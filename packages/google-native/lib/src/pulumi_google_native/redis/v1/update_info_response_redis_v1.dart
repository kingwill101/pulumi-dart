// ignore_for_file: unused_element, unnecessary_cast

/// Represents information about an updating cluster.
class UpdateInfoResponseRedisV1 {
  /// Target number of replica nodes per shard.
  final int targetReplicaCount;

  /// Target number of shards for redis cluster
  final int targetShardCount;

  UpdateInfoResponseRedisV1({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReplicaCount'] = targetReplicaCount;
    map['targetShardCount'] = targetShardCount;
    return map;
  }

  factory UpdateInfoResponseRedisV1.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponseRedisV1(
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}
