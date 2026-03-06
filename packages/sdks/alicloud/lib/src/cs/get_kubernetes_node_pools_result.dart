// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_node_pools_nodepool.dart';

/// Result data returned by getKubernetesNodePools.
class GetKubernetesNodePoolsResult {
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Nodepool IDs.
  final List<String> ids;
  /// The name of node pool.
  final String? nodePoolName;
  /// A list of Nodepool Entries. Each element contains the following attributes:
  final List<GetKubernetesNodePoolsNodepool> nodepools;
  final String? outputFile;

  /// Creates a new [GetKubernetesNodePoolsResult].
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Nodepool IDs.
  /// [nodePoolName] The name of node pool.
  /// [nodepools] A list of Nodepool Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  const GetKubernetesNodePoolsResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nodePoolName,
    required this.nodepools,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nodePoolName': ?nodePoolName,
      'nodepools': pulumi.Input.encodeList<GetKubernetesNodePoolsNodepool, Map<String, dynamic>>(nodepools, (value) => value.toMap()),
      'outputFile': ?outputFile,
    };
  }

  factory GetKubernetesNodePoolsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nodePoolName: (() { final guardedValue = map['nodePoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodepools: pulumi.Input.decodeList<GetKubernetesNodePoolsNodepool>(map['nodepools']!, (value) => GetKubernetesNodePoolsNodepool.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

