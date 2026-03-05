// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_shard_node.dart';

class ClusterShard {
  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Set of nodes in this shard.
  final pulumi.Input<List<ClusterShardNode>>? nodes;
  /// Number of individual nodes in this shard.
  final pulumi.Input<int>? numNodes;
  /// Keyspace for this shard. Example: `0-16383`.
  final pulumi.Input<String>? slots;

  /// Creates a new [ClusterShard].
  /// [name] Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [nodes] Set of nodes in this shard.
  /// [numNodes] Number of individual nodes in this shard.
  /// [slots] Keyspace for this shard. Example: `0-16383`.
  ClusterShard({
    this.name,
    this.nodes,
    this.numNodes,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<ClusterShardNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ClusterShardNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'numNodes': ?numNodes,
      'slots': ?slots,
    };
  }

  factory ClusterShard.fromMap(Map<String, dynamic> map) {
    return ClusterShard(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterShardNode>(guardedValue, (value) => ClusterShardNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      numNodes: (() { final guardedValue = map['numNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      slots: (() { final guardedValue = map['slots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

