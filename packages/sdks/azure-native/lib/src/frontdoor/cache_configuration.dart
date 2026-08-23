// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class CacheConfiguration {
  /// The duration for which the content needs to be cached. Allowed format is in ISO 8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations). HTTP requires the value to be no more than a year
  final pulumi.Input<String>? cacheDuration;
  /// Whether to use dynamic compression for cached content
  final pulumi.Input<String>? dynamicCompression;
  /// Treatment of URL query terms when forming the cache key.
  final pulumi.Input<String>? queryParameterStripDirective;
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;

  /// Creates a new [CacheConfiguration].
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is in ISO 8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations). HTTP requires the value to be no more than a year
  /// [dynamicCompression] Whether to use dynamic compression for cached content
  /// [queryParameterStripDirective] Treatment of URL query terms when forming the cache key.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  const CacheConfiguration({
    this.cacheDuration,
    this.dynamicCompression,
    this.queryParameterStripDirective,
    this.queryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDuration': ?cacheDuration,
      'dynamicCompression': ?dynamicCompression,
      'queryParameterStripDirective': ?queryParameterStripDirective,
      'queryParameters': ?queryParameters,
    };
  }

  factory CacheConfiguration.fromMap(Map<String, dynamic> map) {
    return CacheConfiguration(
      cacheDuration: (() { final guardedValue = map['cacheDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicCompression: (() { final guardedValue = map['dynamicCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameterStripDirective: (() { final guardedValue = map['queryParameterStripDirective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
