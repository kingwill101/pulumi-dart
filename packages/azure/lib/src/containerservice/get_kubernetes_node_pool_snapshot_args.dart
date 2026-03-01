// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_kubernetes_node_pool_snapshot_get_kubernetes_node_pool_snapshot_args_doc}
/// Arguments for getKubernetesNodePoolSnapshot.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_kubernetes_node_pool_snapshot_get_kubernetes_node_pool_snapshot_args_doc}
class GetKubernetesNodePoolSnapshotArgs {
  /// The name of the Kubernetes Node Pool Snapshot.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Kubernetes Node Pool Snapshot exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubernetesNodePoolSnapshotArgs].
  /// [name] The name of the Kubernetes Node Pool Snapshot.
  /// [resourceGroupName] The name of the Resource Group in which the Kubernetes Node Pool Snapshot exists.
  GetKubernetesNodePoolSnapshotArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesNodePoolSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolSnapshotArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

