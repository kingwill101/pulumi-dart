// ignore_for_file: unused_element, unnecessary_cast


class ShardingInstanceShardList {
  /// The instance type of the shard node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  final String nodeClass;
  /// The ID of the Config Server node.
  final String? nodeId;
  /// The storage space of the shard node.
  /// - Custom storage space; value range: [10, 1,000]
  /// - 10-GB increments. Unit: GB.
  final int nodeStorage;
  /// The number of read-only nodes in shard node Default value: `0`. Valid values: `0` to `5`.
  final int? readonlyReplicas;

  /// Creates a new [ShardingInstanceShardList].
  /// [nodeClass] The instance type of the shard node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  /// [nodeId] The ID of the Config Server node.
  /// [nodeStorage] The storage space of the shard node.
  /// [readonlyReplicas] The number of read-only nodes in shard node Default value: `0`. Valid values: `0` to `5`.
  ShardingInstanceShardList({
    required this.nodeClass,
    this.nodeId,
    required this.nodeStorage,
    this.readonlyReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeClass': nodeClass,
      'nodeId': ?nodeId,
      'nodeStorage': nodeStorage,
      'readonlyReplicas': ?readonlyReplicas,
    };
  }

  factory ShardingInstanceShardList.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceShardList(
      nodeClass: map['nodeClass'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeStorage: map['nodeStorage'] as int,
      readonlyReplicas: map['readonlyReplicas'] == null ? null : map['readonlyReplicas'] as int,
    );
  }
}

