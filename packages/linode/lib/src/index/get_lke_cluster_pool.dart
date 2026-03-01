// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_cluster_pool_autoscaler.dart';
import 'get_lke_cluster_pool_disk.dart';
import 'get_lke_cluster_pool_node.dart';
import 'get_lke_cluster_pool_taint.dart';

class GetLkeClusterPool {
  /// The configuration options for the autoscaler. This field only contains an autoscaler configuration if autoscaling is enabled on this cluster.
  final List<GetLkeClusterPoolAutoscaler> autoscalers;
  /// The number of nodes in the Node Pool.
  final int count;
  /// The disk encryption policy for nodes in this pool.
  final String diskEncryption;
  /// This Node Pool’s custom disk layout.
  final List<GetLkeClusterPoolDisk> disks;
  /// The ID of the firewall associated with the Node Pool.
  final int firewallId;
  /// The LKE Cluster's ID.
  final int id;
  /// The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final String k8sVersion;
  /// The label of the Node Pool.
  final String? label;
  /// Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects.
  final Map<String, String> labels;
  /// The nodes in the Node Pool.
  final List<GetLkeClusterPoolNode> nodes;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  final List<GetLkeClusterPoolTaint> taints;
  /// The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final String type;
  /// The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  final String updateStrategy;

  /// Creates a new [GetLkeClusterPool].
  /// [autoscalers] The configuration options for the autoscaler. This field only contains an autoscaler configuration if autoscaling is enabled on this cluster.
  /// [count] The number of nodes in the Node Pool.
  /// [diskEncryption] The disk encryption policy for nodes in this pool.
  /// [disks] This Node Pool’s custom disk layout.
  /// [firewallId] The ID of the firewall associated with the Node Pool.
  /// [id] The LKE Cluster's ID.
  /// [k8sVersion] The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  /// [label] The label of the Node Pool.
  /// [labels] Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects.
  /// [nodes] The nodes in the Node Pool.
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [taints] Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  /// [type] The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  /// [updateStrategy] The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  GetLkeClusterPool({
    required this.autoscalers,
    required this.count,
    required this.diskEncryption,
    required this.disks,
    required this.firewallId,
    required this.id,
    required this.k8sVersion,
    this.label,
    required this.labels,
    required this.nodes,
    required this.tags,
    required this.taints,
    required this.type,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalers': pulumi.Input.encodeList<GetLkeClusterPoolAutoscaler, Map<String, dynamic>>(autoscalers, (value) => value.toMap()),
      'count': count,
      'diskEncryption': diskEncryption,
      'disks': pulumi.Input.encodeList<GetLkeClusterPoolDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'firewallId': firewallId,
      'id': id,
      'k8sVersion': k8sVersion,
      'label': ?label,
      'labels': labels,
      'nodes': pulumi.Input.encodeList<GetLkeClusterPoolNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'tags': tags,
      'taints': pulumi.Input.encodeList<GetLkeClusterPoolTaint, Map<String, dynamic>>(taints, (value) => value.toMap()),
      'type': type,
      'updateStrategy': updateStrategy,
    };
  }

  factory GetLkeClusterPool.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPool(
      autoscalers: pulumi.Input.decodeList<GetLkeClusterPoolAutoscaler>(map['autoscalers'], (value) => GetLkeClusterPoolAutoscaler.fromMap((value as Map).cast<String, dynamic>())),
      count: map['count'] as int,
      diskEncryption: map['diskEncryption'] as String,
      disks: pulumi.Input.decodeList<GetLkeClusterPoolDisk>(map['disks'], (value) => GetLkeClusterPoolDisk.fromMap((value as Map).cast<String, dynamic>())),
      firewallId: map['firewallId'] as int,
      id: map['id'] as int,
      k8sVersion: map['k8sVersion'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      nodes: pulumi.Input.decodeList<GetLkeClusterPoolNode>(map['nodes'], (value) => GetLkeClusterPoolNode.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
      taints: pulumi.Input.decodeList<GetLkeClusterPoolTaint>(map['taints'], (value) => GetLkeClusterPoolTaint.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateStrategy: map['updateStrategy'] as String,
    );
  }
}

