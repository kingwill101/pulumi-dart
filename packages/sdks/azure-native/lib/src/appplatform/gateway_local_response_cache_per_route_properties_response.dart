// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spring Cloud Gateway local response cache per route properties.
class GatewayLocalResponseCachePerRoutePropertiesResponse {
  /// The type of the response cache.
  /// Expected value is 'LocalCachePerRoute'.
  final pulumi.Input<String> responseCacheType;
  /// Maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  final pulumi.Input<String>? size;
  /// Time before a cached entry is expired (300s, 5m, 1h...)
  final pulumi.Input<String>? timeToLive;

  /// Creates a new [GatewayLocalResponseCachePerRoutePropertiesResponse].
  /// [responseCacheType] The type of the response cache.
  /// [size] Maximum size of cache (10MB, 900KB, 1GB...) to determine if the cache needs to evict some entries.
  /// [timeToLive] Time before a cached entry is expired (300s, 5m, 1h...)
  GatewayLocalResponseCachePerRoutePropertiesResponse({
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

  factory GatewayLocalResponseCachePerRoutePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayLocalResponseCachePerRoutePropertiesResponse(
      responseCacheType: pulumi.Input.fromValue(map['responseCacheType'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

