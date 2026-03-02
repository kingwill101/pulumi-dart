// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_properties.dart';
import 'managed_cassandra_managed_service_identity.dart';

/// {@template pulumi_cosmosdb_cassandra_cluster_args_doc}
/// The set of arguments for CassandraCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_cluster_args_doc}
class CassandraClusterArgs {
  /// Managed Cassandra cluster name.
  final pulumi.Input<String>? clusterName;
  /// Identity for the resource.
  final pulumi.Input<ManagedCassandraManagedServiceIdentity>? identity;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// Properties of a managed Cassandra cluster.
  final pulumi.Input<ClusterResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CassandraClusterArgs].
  /// [clusterName] Managed Cassandra cluster name.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [properties] Properties of a managed Cassandra cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  CassandraClusterArgs({
    this.clusterName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedCassandraManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ClusterResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CassandraClusterArgs.fromMap(Map<String, dynamic> map) {
    return CassandraClusterArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedCassandraManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ClusterResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

