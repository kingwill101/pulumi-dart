// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_old_response.dart';

/// {@template pulumi_connectedcache_cache_nodes_operation_args_doc}
/// The set of arguments for CacheNodesOperation.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_cache_nodes_operation_args_doc}
class CacheNodesOperationArgs {
  /// Name of the Customer resource
  final pulumi.Input<String>? customerResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CacheNodeOldResponse>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CacheNodesOperationArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CacheNodesOperationArgs({
    this.customerResourceName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerResourceName': ?customerResourceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CacheNodeOldResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CacheNodesOperationArgs.fromMap(Map<String, dynamic> map) {
    return CacheNodesOperationArgs(
      customerResourceName: map['customerResourceName'] == null ? null : (map['customerResourceName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (CacheNodeOldResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

