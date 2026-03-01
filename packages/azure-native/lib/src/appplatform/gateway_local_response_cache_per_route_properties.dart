// ignore_for_file: unused_element, unnecessary_cast


/// Spring Cloud Gateway local response cache per route properties.
class GatewayLocalResponseCachePerRouteProperties {
  /// The type of the response cache.
  /// Expected value is 'LocalCachePerRoute'.
  final String responseCacheType;
  /// Maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  final String? size;
  /// Time before a cached entry is expired (300s, 5m, 1h...)
  final String? timeToLive;

  /// Creates a new [GatewayLocalResponseCachePerRouteProperties].
  /// [responseCacheType] The type of the response cache.
  /// [size] Maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  /// [timeToLive] Time before a cached entry is expired (300s, 5m, 1h...)
  GatewayLocalResponseCachePerRouteProperties({
    required this.responseCacheType,
    this.size,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseCacheType': responseCacheType,
      'size': ?size,
      'timeToLive': ?timeToLive,
    };
  }

  factory GatewayLocalResponseCachePerRouteProperties.fromMap(Map<String, dynamic> map) {
    return GatewayLocalResponseCachePerRouteProperties(
      responseCacheType: map['responseCacheType'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      timeToLive: map['timeToLive'] == null ? null : map['timeToLive'] as String,
    );
  }
}

