// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_cache_args_doc}
/// The set of arguments for Cache.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_cache_args_doc}
class CacheArgs {
  /// Identifier of the Cache entity. Cache identifier (should be either 'default' or valid Azure region identifier).
  final pulumi.Input<String>? cacheId;
  /// Runtime connection string to cache
  final pulumi.Input<String> connectionString;
  /// Cache description
  final pulumi.Input<String>? description;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Original uri of entity in external system cache points to
  final pulumi.Input<String>? resourceId;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  final pulumi.Input<String> useFromLocation;

  /// Creates a new [CacheArgs].
  /// [cacheId] Identifier of the Cache entity. Cache identifier (should be either 'default' or valid Azure region identifier).
  /// [connectionString] Runtime connection string to cache
  /// [description] Cache description
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] Original uri of entity in external system cache points to
  /// [serviceName] The name of the API Management service.
  /// [useFromLocation] Location identifier to use cache from (should be either 'default' or valid Azure region identifier)
  CacheArgs({
    this.cacheId,
    required this.connectionString,
    this.description,
    required this.resourceGroupName,
    this.resourceId,
    required this.serviceName,
    required this.useFromLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheId': ?cacheId,
      'connectionString': connectionString,
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'serviceName': serviceName,
      'useFromLocation': useFromLocation,
    };
  }

  factory CacheArgs.fromMap(Map<String, dynamic> map) {
    return CacheArgs(
      cacheId: map['cacheId'] == null ? null : (map['cacheId'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      useFromLocation: (map['useFromLocation'] as String).input(),
    );
  }
}

