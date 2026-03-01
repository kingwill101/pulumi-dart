// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// Arguments for getCloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
class GetCloudVmClusterArgs {
  /// The name of this Cloud VM Cluster.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Cloud VM Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudVmClusterArgs].
  /// [name] The name of this Cloud VM Cluster.
  /// [resourceGroupName] The name of the Resource Group where the Cloud VM Cluster exists.
  GetCloudVmClusterArgs({
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

  factory GetCloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

