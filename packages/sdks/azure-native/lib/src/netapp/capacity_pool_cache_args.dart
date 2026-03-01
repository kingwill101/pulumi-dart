// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_properties.dart';

/// {@template pulumi_netapp_capacity_pool_cache_args_doc}
/// The set of arguments for CapacityPoolCache.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_cache_args_doc}
class CapacityPoolCacheArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the cache resource.
  final pulumi.Input<String>? cacheName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// Cache properties
  final pulumi.Input<CacheProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CapacityPoolCacheArgs].
  /// [accountName] The name of the NetApp account
  /// [cacheName] The name of the cache resource.
  /// [location] The geo-location where the resource lives
  /// [poolName] The name of the capacity pool
  /// [properties] Cache properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [zones] The availability zones.
  CapacityPoolCacheArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? cacheName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> poolName,
    required pulumi.Output<CacheProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      cacheName = pulumi.Input.asOptionalInput<String>(cacheName),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      properties = pulumi.Input.asInput<CacheProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cacheName': ?cacheName,
      'location': ?location,
      'poolName': poolName,
      'properties': pulumi.Input.mapInputValue<CacheProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CapacityPoolCacheArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolCacheArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      cacheName: map['cacheName'] == null ? null : pulumi.Output.create<String>(map['cacheName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      properties: pulumi.Output.create<CacheProperties>(CacheProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

