// ignore_for_file: unused_element, unnecessary_cast


/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class CacheConfigurationResponse {
  /// The duration for which the content needs to be cached. Allowed format is in ISO 8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations). HTTP requires the value to be no more than a year
  final String? cacheDuration;
  /// Whether to use dynamic compression for cached content
  final String? dynamicCompression;
  /// Treatment of URL query terms when forming the cache key.
  final String? queryParameterStripDirective;
  /// query parameters to include or exclude (comma separated).
  final String? queryParameters;

  /// Creates a new [CacheConfigurationResponse].
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is in ISO 8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations). HTTP requires the value to be no more than a year
  /// [dynamicCompression] Whether to use dynamic compression for cached content
  /// [queryParameterStripDirective] Treatment of URL query terms when forming the cache key.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  CacheConfigurationResponse({
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

  factory CacheConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CacheConfigurationResponse(
      cacheDuration: map['cacheDuration'] == null ? null : map['cacheDuration'] as String,
      dynamicCompression: map['dynamicCompression'] == null ? null : map['dynamicCompression'] as String,
      queryParameterStripDirective: map['queryParameterStripDirective'] == null ? null : map['queryParameterStripDirective'] as String,
      queryParameters: map['queryParameters'] == null ? null : map['queryParameters'] as String,
    );
  }
}

