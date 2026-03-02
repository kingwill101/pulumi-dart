// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_properties.dart';

/// {@template pulumi_mongocluster_mongo_cluster_args_doc}
/// The set of arguments for MongoCluster.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_mongo_cluster_args_doc}
class MongoClusterArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the mongo cluster.
  final pulumi.Input<String>? mongoClusterName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MongoClusterProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MongoClusterArgs].
  /// [location] The geo-location where the resource lives
  /// [mongoClusterName] The name of the mongo cluster.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  MongoClusterArgs({
    this.location,
    this.mongoClusterName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'mongoClusterName': ?mongoClusterName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MongoClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MongoClusterArgs.fromMap(Map<String, dynamic> map) {
    return MongoClusterArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mongoClusterName: map['mongoClusterName'] == null ? null : (map['mongoClusterName'] as String).input(),
      properties: map['properties'] == null ? null : (MongoClusterProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

