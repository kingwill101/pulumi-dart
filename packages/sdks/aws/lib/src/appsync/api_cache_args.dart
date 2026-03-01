// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appsync_api_cache_api_cache_args_doc}
/// The set of arguments for ApiCache.
/// {@endtemplate}
/// {@macro pulumi_appsync_api_cache_api_cache_args_doc}
class ApiCacheArgs {
  /// Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  final pulumi.Input<String> apiCachingBehavior;
  /// GraphQL API ID.
  final pulumi.Input<String> apiId;
  /// At-rest encryption flag for cache. You cannot update this setting after creation.
  final pulumi.Input<bool>? atRestEncryptionEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  final pulumi.Input<bool>? transitEncryptionEnabled;
  /// TTL in seconds for cache entries.
  final pulumi.Input<int> ttl;
  /// Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  final pulumi.Input<String> type;

  /// Creates a new [ApiCacheArgs].
  /// [apiCachingBehavior] Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  /// [apiId] GraphQL API ID.
  /// [atRestEncryptionEnabled] At-rest encryption flag for cache. You cannot update this setting after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitEncryptionEnabled] Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  /// [ttl] TTL in seconds for cache entries.
  /// [type] Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  ApiCacheArgs({
    required pulumi.Output<String> apiCachingBehavior,
    required pulumi.Output<String> apiId,
    pulumi.Output<bool>? atRestEncryptionEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? transitEncryptionEnabled,
    required pulumi.Output<int> ttl,
    required pulumi.Output<String> type,
  }) :
      apiCachingBehavior = pulumi.Input.asInput<String>(apiCachingBehavior),
      apiId = pulumi.Input.asInput<String>(apiId),
      atRestEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(atRestEncryptionEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(transitEncryptionEnabled),
      ttl = pulumi.Input.asInput<int>(ttl),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiCachingBehavior': apiCachingBehavior,
      'apiId': apiId,
      'atRestEncryptionEnabled': ?atRestEncryptionEnabled,
      'region': ?region,
      'transitEncryptionEnabled': ?transitEncryptionEnabled,
      'ttl': ttl,
      'type': type,
    };
  }

  factory ApiCacheArgs.fromMap(Map<String, dynamic> map) {
    return ApiCacheArgs(
      apiCachingBehavior: pulumi.Output.create<String>(map['apiCachingBehavior'] as String),
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      atRestEncryptionEnabled: map['atRestEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['atRestEncryptionEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitEncryptionEnabled: map['transitEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['transitEncryptionEnabled'] as bool),
      ttl: pulumi.Output.create<int>(map['ttl'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

