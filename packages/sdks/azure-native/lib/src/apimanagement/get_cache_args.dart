// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_cache_args_doc}
/// Arguments for getCache.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_cache_args_doc}
class GetCacheArgs {
  /// Identifier of the Cache entity. Cache identifier (should be either 'default' or valid Azure region identifier).
  final pulumi.Input<String> cacheId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetCacheArgs].
  /// [cacheId] Identifier of the Cache entity. Cache identifier (should be either 'default' or valid Azure region identifier).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const GetCacheArgs({
    required this.cacheId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheId': cacheId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetCacheArgs(
      cacheId: pulumi.Input.fromValue(map['cacheId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

