// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_properties.dart';

/// {@template pulumi_cosmosdb_garnet_cluster_args_doc}
/// The set of arguments for GarnetCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_garnet_cluster_args_doc}
class GarnetClusterArgs {
  /// Garnet cache cluster name.
  final pulumi.Input<String>? clusterName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of a Garnet cache cluster.
  final pulumi.Input<ClusterResourceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GarnetClusterArgs].
  /// [clusterName] Garnet cache cluster name.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of a Garnet cache cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GarnetClusterArgs({
    this.clusterName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ClusterResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GarnetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GarnetClusterArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (ClusterResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

