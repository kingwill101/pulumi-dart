// ignore_for_file: unused_element, unnecessary_cast


class InstanceStateInfoUpdateInfo {
  /// (Output)
  /// Output only. Target engine version for the instance.
  final String? targetEngineVersion;
  /// (Output)
  /// Output only. Target node type for the instance.
  final String? targetNodeType;
  /// (Output)
  /// Output only. Target number of replica nodes per shard for the instance.
  final int? targetReplicaCount;
  /// (Output)
  /// Output only. Target number of shards for the instance.
  final int? targetShardCount;

  /// Creates a new [InstanceStateInfoUpdateInfo].
  /// [targetEngineVersion] (Output)
  /// [targetNodeType] (Output)
  /// [targetReplicaCount] (Output)
  /// [targetShardCount] (Output)
  InstanceStateInfoUpdateInfo({
    this.targetEngineVersion,
    this.targetNodeType,
    this.targetReplicaCount,
    this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetEngineVersion': ?targetEngineVersion,
      'targetNodeType': ?targetNodeType,
      'targetReplicaCount': ?targetReplicaCount,
      'targetShardCount': ?targetShardCount,
    };
  }

  factory InstanceStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return InstanceStateInfoUpdateInfo(
      targetEngineVersion: map['targetEngineVersion'] == null ? null : map['targetEngineVersion'] as String,
      targetNodeType: map['targetNodeType'] == null ? null : map['targetNodeType'] as String,
      targetReplicaCount: map['targetReplicaCount'] == null ? null : map['targetReplicaCount'] as int,
      targetShardCount: map['targetShardCount'] == null ? null : map['targetShardCount'] as int,
    );
  }
}

