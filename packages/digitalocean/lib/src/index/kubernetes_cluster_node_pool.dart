// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_node_pool_node.dart';
import 'kubernetes_cluster_node_pool_taint.dart';

class KubernetesClusterNodePool {
  /// A computed field representing the actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  final int? actualNodeCount;
  /// Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  final bool? autoScale;
  /// A unique ID that can be used to identify and reference the node.
  final String? id;
  /// A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  final Map<String, String>? labels;
  /// If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  final int? maxNodes;
  /// If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  final int? minNodes;
  /// A name for the node pool.
  final String name;
  /// The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  final int? nodeCount;
  /// A list of nodes in the pool. Each node exports the following attributes:
  final List<KubernetesClusterNodePoolNode>? nodes;
  /// The slug identifier for the type of Droplet to be used as workers in the node pool.
  final String size;
  /// A list of tag names applied to the node pool.
  final List<String>? tags;
  /// A block representing a taint applied to all nodes in the pool. Each taint exports the following attributes (taints must be unique by key and effect pair):
  final List<KubernetesClusterNodePoolTaint>? taints;

  /// Creates a new [KubernetesClusterNodePool].
  /// [actualNodeCount] A computed field representing the actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  /// [autoScale] Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [labels] A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  /// [maxNodes] If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  /// [minNodes] If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  /// [name] A name for the node pool.
  /// [nodeCount] The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  /// [nodes] A list of nodes in the pool. Each node exports the following attributes:
  /// [size] The slug identifier for the type of Droplet to be used as workers in the node pool.
  /// [tags] A list of tag names applied to the node pool.
  /// [taints] A block representing a taint applied to all nodes in the pool. Each taint exports the following attributes (taints must be unique by key and effect pair):
  KubernetesClusterNodePool({
    this.actualNodeCount,
    this.autoScale,
    this.id,
    this.labels,
    this.maxNodes,
    this.minNodes,
    required this.name,
    this.nodeCount,
    this.nodes,
    required this.size,
    this.tags,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualNodeCount': ?actualNodeCount,
      'autoScale': ?autoScale,
      'id': ?id,
      'labels': ?labels,
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'name': name,
      'nodeCount': ?nodeCount,
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<KubernetesClusterNodePoolNode, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'size': size,
      'tags': ?tags,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<KubernetesClusterNodePoolTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
    };
  }

  factory KubernetesClusterNodePool.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePool(
      actualNodeCount: map['actualNodeCount'] == null ? null : map['actualNodeCount'] as int,
      autoScale: map['autoScale'] == null ? null : map['autoScale'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      maxNodes: map['maxNodes'] == null ? null : map['maxNodes'] as int,
      minNodes: map['minNodes'] == null ? null : map['minNodes'] as int,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<KubernetesClusterNodePoolNode>(map['nodes'], (value) => KubernetesClusterNodePoolNode.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<KubernetesClusterNodePoolTaint>(map['taints'], (value) => KubernetesClusterNodePoolTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

