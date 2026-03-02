// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_center_resource_properties.dart';

/// {@template pulumi_cosmosdb_cassandra_data_center_args_doc}
/// The set of arguments for CassandraDataCenter.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_data_center_args_doc}
class CassandraDataCenterArgs {
  /// Managed Cassandra cluster name.
  final pulumi.Input<String> clusterName;
  /// Data center name in a managed Cassandra cluster.
  final pulumi.Input<String>? dataCenterName;
  /// Properties of a managed Cassandra data center.
  final pulumi.Input<DataCenterResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CassandraDataCenterArgs].
  /// [clusterName] Managed Cassandra cluster name.
  /// [dataCenterName] Data center name in a managed Cassandra cluster.
  /// [properties] Properties of a managed Cassandra data center.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  CassandraDataCenterArgs({
    required this.clusterName,
    this.dataCenterName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'dataCenterName': ?dataCenterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataCenterResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CassandraDataCenterArgs.fromMap(Map<String, dynamic> map) {
    return CassandraDataCenterArgs(
      clusterName: (map['clusterName'] as String).input(),
      dataCenterName: map['dataCenterName'] == null ? null : (map['dataCenterName'] as String).input(),
      properties: map['properties'] == null ? null : (DataCenterResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

