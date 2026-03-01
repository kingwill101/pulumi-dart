// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Specifies the name of the Kusto Cluster.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Kusto Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterArgs].
  /// [name] Specifies the name of the Kusto Cluster.
  /// [resourceGroupName] The name of the Resource Group where the Kusto Cluster exists.
  GetClusterArgs({
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

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

