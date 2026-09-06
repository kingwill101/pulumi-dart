// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_property.dart';

/// {@template pulumi_connectedcache_enterprise_mcc_cache_nodes_operation_args_doc}
/// The set of arguments for EnterpriseMccCacheNodesOperation.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_enterprise_mcc_cache_nodes_operation_args_doc}
class EnterpriseMccCacheNodesOperationArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String?>? cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CacheNodeProperty?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EnterpriseMccCacheNodesOperationArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const EnterpriseMccCacheNodesOperationArgs({
    this.cacheNodeResourceName,
    required this.customerResourceName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeResourceName': ?cacheNodeResourceName,
      'customerResourceName': customerResourceName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CacheNodeProperty, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EnterpriseMccCacheNodesOperationArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseMccCacheNodesOperationArgs(
      cacheNodeResourceName: (() { final guardedValue = map['cacheNodeResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerResourceName: pulumi.Input.fromValue(map['customerResourceName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheNodeProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
