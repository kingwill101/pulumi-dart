// ignore_for_file: unused_element, unnecessary_cast


/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class CacheConfiguration {
  /// Caching behavior for the requests
  final String? cacheBehavior;
  /// The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  final String? cacheDuration;
  /// Indicates whether content compression is enabled. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  final String? isCompressionEnabled;
  /// query parameters to include or exclude (comma separated).
  final String? queryParameters;
  /// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  final String? queryStringCachingBehavior;

  /// Creates a new [CacheConfiguration].
  /// [cacheBehavior] Caching behavior for the requests
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  /// [isCompressionEnabled] Indicates whether content compression is enabled. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringCachingBehavior] Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  CacheConfiguration({
    this.cacheBehavior,
    this.cacheDuration,
    this.isCompressionEnabled,
    this.queryParameters,
    this.queryStringCachingBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheBehavior': ?cacheBehavior,
      'cacheDuration': ?cacheDuration,
      'isCompressionEnabled': ?isCompressionEnabled,
      'queryParameters': ?queryParameters,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
    };
  }

  factory CacheConfiguration.fromMap(Map<String, dynamic> map) {
    return CacheConfiguration(
      cacheBehavior: map['cacheBehavior'] == null ? null : map['cacheBehavior'] as String,
      cacheDuration: map['cacheDuration'] == null ? null : map['cacheDuration'] as String,
      isCompressionEnabled: map['isCompressionEnabled'] == null ? null : map['isCompressionEnabled'] as String,
      queryParameters: map['queryParameters'] == null ? null : map['queryParameters'] as String,
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : map['queryStringCachingBehavior'] as String,
    );
  }
}

