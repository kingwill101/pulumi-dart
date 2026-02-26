// ignore_for_file: unused_element, unnecessary_cast

/// Represents information about an updating cluster.
class UpdateInfoResponse4 {
  /// Target number of replica nodes per shard.
  final int targetReplicaCount;

  /// Target number of shards for redis cluster
  final int targetShardCount;

  UpdateInfoResponse4({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetReplicaCount'] = targetReplicaCount;
    map['targetShardCount'] = targetShardCount;
    return map;
  }

  factory UpdateInfoResponse4.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse4(
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}
