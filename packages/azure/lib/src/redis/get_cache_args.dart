// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_cache_get_cache_args_doc}
/// Arguments for getCache.
/// {@endtemplate}
/// {@macro pulumi_redis_get_cache_get_cache_args_doc}
class GetCacheArgs {
  /// The name of the Redis cache
  final pulumi.Input<String> name;
  /// The name of the resource group the Redis cache instance is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCacheArgs].
  /// [name] The name of the Redis cache
  /// [resourceGroupName] The name of the resource group the Redis cache instance is located in.
  GetCacheArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetCacheArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

