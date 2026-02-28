// ignore_for_file: unused_element, unnecessary_cast

/// Represents information about an updating cluster.
class UpdateInfoResponseRedisV1beta1 {
  /// Target number of replica nodes per shard.
  final int targetReplicaCount;

  /// Target number of shards for redis cluster
  final int targetShardCount;

  /// Creates a new [UpdateInfoResponseRedisV1beta1].
  /// [targetReplicaCount] Target number of replica nodes per shard.
  /// [targetShardCount] Target number of shards for redis cluster
  UpdateInfoResponseRedisV1beta1({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReplicaCount'] = targetReplicaCount;
    map['targetShardCount'] = targetShardCount;
    return map;
  }

  factory UpdateInfoResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponseRedisV1beta1(
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}
