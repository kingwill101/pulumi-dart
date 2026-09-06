// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_properties.dart';

/// {@template pulumi_mongocluster_mongo_cluster_args_doc}
/// The set of arguments for MongoCluster.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_mongo_cluster_args_doc}
class MongoClusterArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the mongo cluster.
  final pulumi.Input<String?>? mongoClusterName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<MongoClusterProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MongoClusterArgs].
  /// [location] The geo-location where the resource lives
  /// [mongoClusterName] The name of the mongo cluster.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const MongoClusterArgs({
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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoClusterName: (() { final guardedValue = map['mongoClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
