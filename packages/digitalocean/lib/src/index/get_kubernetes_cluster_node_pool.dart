// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_node_pool_node.dart';
import 'get_kubernetes_cluster_node_pool_taint.dart';

class GetKubernetesClusterNodePool {
  /// The actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  final int actualNodeCount;
  /// A boolean indicating whether auto-scaling is enabled on the node pool.
  final bool autoScale;
  /// A unique ID that can be used to identify and reference the node.
  final String id;
  /// A map of key/value pairs applied to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  final Map<String, String> labels;
  /// If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  final int maxNodes;
  /// If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  final int minNodes;
  /// The name of Kubernetes cluster.
  final String name;
  /// The number of Droplet instances in the node pool.
  final int nodeCount;
  /// A list of nodes in the pool. Each node exports the following attributes:
  final List<GetKubernetesClusterNodePoolNode> nodes;
  /// The slug identifier for the type of Droplet used as workers in the node pool.
  final String size;
  /// A list of tag names applied to the node pool.
  final List<String> tags;
  /// A list of taints applied to all nodes in the pool. Each taint exports the following attributes:
  final List<GetKubernetesClusterNodePoolTaint> taints;

  /// Creates a new [GetKubernetesClusterNodePool].
  /// [actualNodeCount] The actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  /// [autoScale] A boolean indicating whether auto-scaling is enabled on the node pool.
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [labels] A map of key/value pairs applied to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  /// [maxNodes] If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  /// [minNodes] If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  /// [name] The name of Kubernetes cluster.
  /// [nodeCount] The number of Droplet instances in the node pool.
  /// [nodes] A list of nodes in the pool. Each node exports the following attributes:
  /// [size] The slug identifier for the type of Droplet used as workers in the node pool.
  /// [tags] A list of tag names applied to the node pool.
  /// [taints] A list of taints applied to all nodes in the pool. Each taint exports the following attributes:
  GetKubernetesClusterNodePool({
    required this.actualNodeCount,
    required this.autoScale,
    required this.id,
    required this.labels,
    required this.maxNodes,
    required this.minNodes,
    required this.name,
    required this.nodeCount,
    required this.nodes,
    required this.size,
    required this.tags,
    required this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualNodeCount': actualNodeCount,
      'autoScale': autoScale,
      'id': id,
      'labels': labels,
      'maxNodes': maxNodes,
      'minNodes': minNodes,
      'name': name,
      'nodeCount': nodeCount,
      'nodes': pulumi.Input.encodeList<GetKubernetesClusterNodePoolNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'size': size,
      'tags': tags,
      'taints': pulumi.Input.encodeList<GetKubernetesClusterNodePoolTaint, Map<String, dynamic>>(taints, (value) => value.toMap()),
    };
  }

  factory GetKubernetesClusterNodePool.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNodePool(
      actualNodeCount: map['actualNodeCount'] as int,
      autoScale: map['autoScale'] as bool,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      nodes: pulumi.Input.decodeList<GetKubernetesClusterNodePoolNode>(map['nodes'], (value) => GetKubernetesClusterNodePoolNode.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] as String,
      tags: (map['tags'] as List).cast<String>(),
      taints: pulumi.Input.decodeList<GetKubernetesClusterNodePoolTaint>(map['taints'], (value) => GetKubernetesClusterNodePoolTaint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

