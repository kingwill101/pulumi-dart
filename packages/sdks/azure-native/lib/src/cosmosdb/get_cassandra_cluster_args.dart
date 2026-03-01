// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_cassandra_cluster_args_doc}
/// Arguments for getCassandraCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_cassandra_cluster_args_doc}
class GetCassandraClusterArgs {
  /// Managed Cassandra cluster name.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCassandraClusterArgs].
  /// [clusterName] Managed Cassandra cluster name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCassandraClusterArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCassandraClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCassandraClusterArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

