// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_node_pools_get_kubernetes_node_pools_args_doc}
/// Arguments for getKubernetesNodePools.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_node_pools_get_kubernetes_node_pools_args_doc}
class GetKubernetesNodePoolsArgs {
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// A list of Nodepool IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of node pool.
  final pulumi.Input<String>? nodePoolName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetKubernetesNodePoolsArgs].
  /// [clusterId] The id of kubernetes cluster.
  /// [ids] A list of Nodepool IDs.
  /// [nodePoolName] The name of node pool.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetKubernetesNodePoolsArgs({
    required String clusterId,
    List<String>? ids,
    String? nodePoolName,
    String? outputFile,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nodePoolName = pulumi.Input.asOptionalInput<String>(nodePoolName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nodePoolName': ?nodePoolName,
      'outputFile': ?outputFile,
    };
  }

  factory GetKubernetesNodePoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsArgs(
      clusterId: map['clusterId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nodePoolName: map['nodePoolName'] == null ? null : map['nodePoolName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

