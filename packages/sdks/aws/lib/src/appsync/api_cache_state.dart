// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiCache resources.
class ApiCacheState {
  /// Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  final pulumi.Input<String>? apiCachingBehavior;

  /// GraphQL API ID.
  final pulumi.Input<String>? apiId;

  /// At-rest encryption flag for cache. You cannot update this setting after creation.
  final pulumi.Input<bool>? atRestEncryptionEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  final pulumi.Input<bool>? transitEncryptionEnabled;

  /// TTL in seconds for cache entries.
  final pulumi.Input<int>? ttl;

  /// Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  final pulumi.Input<String>? type;

  /// Creates a new [ApiCacheState].
  /// [apiCachingBehavior] Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  /// [apiId] GraphQL API ID.
  /// [atRestEncryptionEnabled] At-rest encryption flag for cache. You cannot update this setting after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitEncryptionEnabled] Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  /// [ttl] TTL in seconds for cache entries.
  /// [type] Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  ApiCacheState({
    this.apiCachingBehavior,
    this.apiId,
    this.atRestEncryptionEnabled,
    this.region,
    this.transitEncryptionEnabled,
    this.ttl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiCachingBehavior': ?apiCachingBehavior,
      'apiId': ?apiId,
      'atRestEncryptionEnabled': ?atRestEncryptionEnabled,
      'region': ?region,
      'transitEncryptionEnabled': ?transitEncryptionEnabled,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory ApiCacheState.fromMap(Map<String, dynamic> map) {
    return ApiCacheState(
      apiCachingBehavior: (() {
        final guardedValue = map['apiCachingBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiId: (() {
        final guardedValue = map['apiId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      atRestEncryptionEnabled: (() {
        final guardedValue = map['atRestEncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitEncryptionEnabled: (() {
        final guardedValue = map['transitEncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
