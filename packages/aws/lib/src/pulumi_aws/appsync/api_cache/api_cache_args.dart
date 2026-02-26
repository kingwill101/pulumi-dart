// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ApiCache.
class ApiCacheArgs {
  /// Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  final Input<String> apiCachingBehavior;

  /// GraphQL API ID.
  final Input<String> apiId;

  /// At-rest encryption flag for cache. You cannot update this setting after creation.
  final Input<bool>? atRestEncryptionEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  final Input<bool>? transitEncryptionEnabled;

  /// TTL in seconds for cache entries.
  final Input<int> ttl;

  /// Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  final Input<String> type;

  ApiCacheArgs({
    required this.apiCachingBehavior,
    required this.apiId,
    this.atRestEncryptionEnabled,
    this.region,
    this.transitEncryptionEnabled,
    required this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiCachingBehavior'] = apiCachingBehavior;
    map['apiId'] = apiId;
    final atRestEncryptionEnabledValue = atRestEncryptionEnabled;
    if (atRestEncryptionEnabledValue != null) {
      map['atRestEncryptionEnabled'] = atRestEncryptionEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final transitEncryptionEnabledValue = transitEncryptionEnabled;
    if (transitEncryptionEnabledValue != null) {
      map['transitEncryptionEnabled'] = transitEncryptionEnabledValue;
    }
    map['ttl'] = ttl;
    map['type'] = type;
    return map;
  }

  factory ApiCacheArgs.fromMap(Map<String, dynamic> map) {
    return ApiCacheArgs(
      apiCachingBehavior: Input.asInput<String>(map['apiCachingBehavior']),
      apiId: Input.asInput<String>(map['apiId']),
      atRestEncryptionEnabled:
          Input.asOptionalInput<bool>(map['atRestEncryptionEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      transitEncryptionEnabled:
          Input.asOptionalInput<bool>(map['transitEncryptionEnabled']),
      ttl: Input.asInput<int>(map['ttl']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
