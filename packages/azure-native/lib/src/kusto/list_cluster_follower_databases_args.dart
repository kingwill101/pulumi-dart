// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_list_cluster_follower_databases_args_doc}
/// Arguments for listClusterFollowerDatabases.
/// {@endtemplate}
/// {@macro pulumi_kusto_list_cluster_follower_databases_args_doc}
class ListClusterFollowerDatabasesArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListClusterFollowerDatabasesArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListClusterFollowerDatabasesArgs({
    required String clusterName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListClusterFollowerDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return ListClusterFollowerDatabasesArgs(
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

