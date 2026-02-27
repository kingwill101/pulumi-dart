// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_shard_node/get_cluster_shard_node.dart';

class GetClusterShard {
  /// Name of the cluster.
  final String name;

  /// Set of nodes in this shard.
  final List<GetClusterShardNode> nodes;

  /// Number of individual nodes in this shard.
  final int numNodes;

  /// Keyspace for this shard. Example: `0-16383`.
  final String slots;

  GetClusterShard({
    required this.name,
    required this.nodes,
    required this.numNodes,
    required this.slots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['nodes'] =
        pulumi.Input.encodeList<GetClusterShardNode, Map<String, dynamic>>(
            nodes, (value) => value.toMap());
    map['numNodes'] = numNodes;
    map['slots'] = slots;
    return map;
  }

  factory GetClusterShard.fromMap(Map<String, dynamic> map) {
    return GetClusterShard(
      name: map['name'] as String,
      nodes: pulumi.Input.decodeList<GetClusterShardNode>(
          map['nodes'],
          (value) => GetClusterShardNode.fromMap(
              (value as Map).cast<String, dynamic>())),
      numNodes: map['numNodes'] as int,
      slots: map['slots'] as String,
    );
  }
}
