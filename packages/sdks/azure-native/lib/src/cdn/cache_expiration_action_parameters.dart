// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for the cache expiration action.
class CacheExpirationActionParameters {
  /// Caching behavior for the requests
  final String cacheBehavior;
  /// The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  final String? cacheDuration;
  /// The level at which the content needs to be cached.
  final String cacheType;
  /// Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  final String typeName;

  /// Creates a new [CacheExpirationActionParameters].
  /// [cacheBehavior] Caching behavior for the requests
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  /// [cacheType] The level at which the content needs to be cached.
  /// [typeName] Expected value is 'DeliveryRuleCacheExpirationActionParameters'.
  CacheExpirationActionParameters({
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
      cacheBehavior: map['cacheBehavior'] as String,
      cacheDuration: map['cacheDuration'] == null ? null : map['cacheDuration'] as String,
      cacheType: map['cacheType'] as String,
      typeName: map['typeName'] as String,
    );
  }
}

