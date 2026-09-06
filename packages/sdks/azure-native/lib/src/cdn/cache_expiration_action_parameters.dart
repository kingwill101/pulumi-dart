// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the cache expiration action.
class CacheExpirationActionParameters {
  /// Caching behavior for the requests
  final pulumi.Input<dynamic> cacheBehavior;
  /// The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  final pulumi.Input<String?>? cacheDuration;
  /// The level at which the content needs to be cached.
  final pulumi.Input<dynamic> cacheType;
  /// Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CacheExpirationActionParameters].
  /// [cacheBehavior] Caching behavior for the requests
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  /// [cacheType] The level at which the content needs to be cached.
  /// [typeName] Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  const CacheExpirationActionParameters({
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

  factory CacheExpirationActionParameters.fromMap(Map<String, dynamic> map) {
    return CacheExpirationActionParameters(
      cacheBehavior: pulumi.Input.fromValue(map['cacheBehavior']),
      cacheDuration: (() { final guardedValue = map['cacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheType: pulumi.Input.fromValue(map['cacheType']),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
