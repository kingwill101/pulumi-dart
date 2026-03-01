// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagecache_get_cache_args_doc}
/// Arguments for getCache.
/// {@endtemplate}
/// {@macro pulumi_storagecache_get_cache_args_doc}
class GetCacheArgs {
  /// Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  final pulumi.Input<String> cacheName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCacheArgs].
  /// [cacheName] Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCacheArgs({
    required String cacheName,
    required String resourceGroupName,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetCacheArgs(
      cacheName: map['cacheName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

