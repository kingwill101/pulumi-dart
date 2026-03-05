// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingInstanceShardList {
  /// The instance type of the shard node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  final pulumi.Input<String> nodeClass;
  /// The ID of the Config Server node.
  final pulumi.Input<String>? nodeId;
  /// The storage space of the shard node.
  /// - Custom storage space; value range: [10, 1,000]
  /// - 10-GB increments. Unit: GB.
  final pulumi.Input<int> nodeStorage;
  /// The number of read-only nodes in shard node Default value: `0`. Valid values: `0` to `5`.
  final pulumi.Input<int>? readonlyReplicas;

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
      nodeClass: pulumi.Input.fromValue(map['nodeClass'] as String),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeStorage: pulumi.Input.fromValue(map['nodeStorage'] as int),
      readonlyReplicas: (() { final guardedValue = map['readonlyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

