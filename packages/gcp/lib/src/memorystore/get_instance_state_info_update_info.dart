// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceStateInfoUpdateInfo {
  /// Output only. Target engine version for the instance.
  final String targetEngineVersion;

  /// Output only. Target node type for the instance.
  final String targetNodeType;

  /// Output only. Target number of replica nodes per shard for the instance.
  final int targetReplicaCount;

  /// Output only. Target number of shards for the instance.
  final int targetShardCount;

  /// Creates a new [GetInstanceStateInfoUpdateInfo].
  /// [targetEngineVersion] Output only. Target engine version for the instance.
  /// [targetNodeType] Output only. Target node type for the instance.
  /// [targetReplicaCount] Output only. Target number of replica nodes per shard for the instance.
  /// [targetShardCount] Output only. Target number of shards for the instance.
  GetInstanceStateInfoUpdateInfo({
    required this.targetEngineVersion,
    required this.targetNodeType,
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetEngineVersion'] = targetEngineVersion;
    map['targetNodeType'] = targetNodeType;
    map['targetReplicaCount'] = targetReplicaCount;
    map['targetShardCount'] = targetShardCount;
    return map;
  }

  factory GetInstanceStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceStateInfoUpdateInfo(
      targetEngineVersion: map['targetEngineVersion'] as String,
      targetNodeType: map['targetNodeType'] as String,
      targetReplicaCount: map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] as int,
    );
  }
}
