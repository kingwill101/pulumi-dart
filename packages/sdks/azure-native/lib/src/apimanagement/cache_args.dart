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
    pulumi.Output<String>? cacheId,
    required pulumi.Output<String> connectionString,
    pulumi.Output<String>? description,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceId,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> useFromLocation,
  }) :
      cacheId = pulumi.Input.asOptionalInput<String>(cacheId),
      connectionString = pulumi.Input.asInput<String>(connectionString),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      useFromLocation = pulumi.Input.asInput<String>(useFromLocation);

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
      cacheId: map['cacheId'] == null ? null : pulumi.Output.create<String>(map['cacheId'] as String),
      connectionString: pulumi.Output.create<String>(map['connectionString'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      useFromLocation: pulumi.Output.create<String>(map['useFromLocation'] as String),
    );
  }
}

