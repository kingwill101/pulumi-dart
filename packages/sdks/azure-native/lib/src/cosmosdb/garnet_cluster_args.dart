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
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? location,
    pulumi.Output<ClusterResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ClusterResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ClusterResourceProperties>(ClusterResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

