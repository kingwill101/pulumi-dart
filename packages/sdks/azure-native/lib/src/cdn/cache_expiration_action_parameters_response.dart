// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the cache expiration action.
class CacheExpirationActionParametersResponse {
  /// Caching behavior for the requests
  final pulumi.Input<String> cacheBehavior;
  /// The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  final pulumi.Input<String>? cacheDuration;
  /// The level at which the content needs to be cached.
  final pulumi.Input<String> cacheType;
  /// Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CacheExpirationActionParametersResponse].
  /// [cacheBehavior] Caching behavior for the requests
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  /// [cacheType] The level at which the content needs to be cached.
  /// [typeName] Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  CacheExpirationActionParametersResponse({
    required this.cacheBehavior,
    this.cacheDuration,
    required this.cacheType,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheBehavior': cacheBehavior,
      'cacheDuration': ?cacheDuration,
      'cacheType': cacheType,
      'typeName': typeName,
    };
  }

  factory CacheExpirationActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return CacheExpirationActionParametersResponse(
      cacheBehavior: (map['cacheBehavior'] as String).input(),
      cacheDuration: map['cacheDuration'] == null ? null : (map['cacheDuration']! as String).input(),
      cacheType: (map['cacheType'] as String).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

