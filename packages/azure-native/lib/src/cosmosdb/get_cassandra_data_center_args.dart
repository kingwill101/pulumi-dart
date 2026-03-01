// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_cassandra_data_center_args_doc}
/// Arguments for getCassandraDataCenter.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_cassandra_data_center_args_doc}
class GetCassandraDataCenterArgs {
  /// Managed Cassandra cluster name.
  final pulumi.Input<String> clusterName;
  /// Data center name in a managed Cassandra cluster.
  final pulumi.Input<String> dataCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCassandraDataCenterArgs].
  /// [clusterName] Managed Cassandra cluster name.
  /// [dataCenterName] Data center name in a managed Cassandra cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCassandraDataCenterArgs({
    required String clusterName,
    required String dataCenterName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      dataCenterName = pulumi.Input.asInput<String>(dataCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'dataCenterName': dataCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCassandraDataCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetCassandraDataCenterArgs(
      clusterName: map['clusterName'] as String,
      dataCenterName: map['dataCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

