// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_shard_node/cluster_shard_node.dart';

class ClusterShard {
  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String? name;

  /// Set of nodes in this shard.
  final List<ClusterShardNode>? nodes;

  /// Number of individual nodes in this shard.
  final int? numNodes;

  /// Keyspace for this shard. Example: `0-16383`.
  final String? slots;

  ClusterShard({
    this.name,
    this.nodes,
    this.numNodes,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodesValue = nodes;
    if (nodesValue != null) {
      map['nodes'] = Input.encodeList<ClusterShardNode, Map<String, dynamic>>(
          nodesValue, (value) => value.toMap());
    }
    final numNodesValue = numNodes;
    if (numNodesValue != null) {
      map['numNodes'] = numNodesValue;
    }
    final slotsValue = slots;
    if (slotsValue != null) {
      map['slots'] = slotsValue;
    }
    return map;
  }

  factory ClusterShard.fromMap(Map<String, dynamic> map) {
    return ClusterShard(
      name: map['name'] == null ? null : map['name'] as String,
      nodes: map['nodes'] == null
          ? null
          : Input.decodeList<ClusterShardNode>(
              map['nodes'],
              (value) => ClusterShardNode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      numNodes: map['numNodes'] == null ? null : map['numNodes'] as int,
      slots: map['slots'] == null ? null : map['slots'] as String,
    );
  }
}
