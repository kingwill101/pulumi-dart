// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_shard_node.dart';

class GetClusterShard {
  /// Name of the cluster.
  final pulumi.Input<String> name;
  /// Set of nodes in this shard.
  final pulumi.Input<List<GetClusterShardNode>> nodes;
  /// Number of individual nodes in this shard.
  final pulumi.Input<int> numNodes;
  /// Keyspace for this shard. Example: `0-16383`.
  final pulumi.Input<String> slots;

  /// Creates a new [GetClusterShard].
  /// [name] Name of the cluster.
  /// [nodes] Set of nodes in this shard.
  /// [numNodes] Number of individual nodes in this shard.
  /// [slots] Keyspace for this shard. Example: `0-16383`.
  GetClusterShard({
    required this.name,
    required this.nodes,
    required this.numNodes,
    required this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nodes': pulumi.Input.mapInputValue<List<GetClusterShardNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<GetClusterShardNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numNodes': numNodes,
      'slots': slots,
    };
  }

  factory GetClusterShard.fromMap(Map<String, dynamic> map) {
    return GetClusterShard(
      name: (map['name'] as String).input(),
      nodes: (pulumi.Input.decodeList<GetClusterShardNode>(map['nodes'], (value) => GetClusterShardNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      numNodes: (map['numNodes'] as int).input(),
      slots: (map['slots'] as String).input(),
    );
  }
}

