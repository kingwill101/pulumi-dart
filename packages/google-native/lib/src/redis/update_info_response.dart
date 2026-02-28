// ignore_for_file: unused_element, unnecessary_cast


/// Represents information about an updating cluster.
class UpdateInfoResponse {
  /// Target number of replica nodes per shard.
  final int targetReplicaCount;
  /// Target number of shards for redis cluster
  final int targetShardCount;

  /// Creates a new [UpdateInfoResponse].
  /// [targetReplicaCount] Target number of replica nodes per shard.
  /// [targetShardCount] Target number of shards for redis cluster
  UpdateInfoResponse({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReplicaCount': targetReplicaCount,
      'targetShardCount': targetShardCount,
    };
  }

  factory UpdateInfoResponse.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse(
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}

