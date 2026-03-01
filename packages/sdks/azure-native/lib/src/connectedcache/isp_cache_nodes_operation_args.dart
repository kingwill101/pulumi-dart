// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_property.dart';

/// {@template pulumi_connectedcache_isp_cache_nodes_operation_args_doc}
/// The set of arguments for IspCacheNodesOperation.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_isp_cache_nodes_operation_args_doc}
class IspCacheNodesOperationArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String>? cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CacheNodeProperty>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IspCacheNodesOperationArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IspCacheNodesOperationArgs({
    pulumi.Output<String>? cacheNodeResourceName,
    required pulumi.Output<String> customerResourceName,
    pulumi.Output<String>? location,
    pulumi.Output<CacheNodeProperty>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cacheNodeResourceName = pulumi.Input.asOptionalInput<String>(cacheNodeResourceName),
      customerResourceName = pulumi.Input.asInput<String>(customerResourceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<CacheNodeProperty>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory IspCacheNodesOperationArgs.fromMap(Map<String, dynamic> map) {
    return IspCacheNodesOperationArgs(
      cacheNodeResourceName: map['cacheNodeResourceName'] == null ? null : pulumi.Output.create<String>(map['cacheNodeResourceName'] as String),
      customerResourceName: pulumi.Output.create<String>(map['customerResourceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CacheNodeProperty>(CacheNodeProperty.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

