// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class CacheConfigurationResponse {
  /// Caching behavior for the requests
  final pulumi.Input<String>? cacheBehavior;
  /// The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  final pulumi.Input<String>? cacheDuration;
  /// Indicates whether content compression is enabled. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  final pulumi.Input<String>? isCompressionEnabled;
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;
  /// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  final pulumi.Input<String>? queryStringCachingBehavior;

  /// Creates a new [CacheConfigurationResponse].
  /// [cacheBehavior] Caching behavior for the requests
  /// [cacheDuration] The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss
  /// [isCompressionEnabled] Indicates whether content compression is enabled. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on AzureFrontDoor when requested content is smaller than 1 byte or larger than 1 MB.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringCachingBehavior] Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  CacheConfigurationResponse({
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

  factory CacheConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CacheConfigurationResponse(
      cacheBehavior: map['cacheBehavior'] == null ? null : (map['cacheBehavior'] as String).input(),
      cacheDuration: map['cacheDuration'] == null ? null : (map['cacheDuration'] as String).input(),
      isCompressionEnabled: map['isCompressionEnabled'] == null ? null : (map['isCompressionEnabled'] as String).input(),
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters'] as String).input(),
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : (map['queryStringCachingBehavior'] as String).input(),
    );
  }
}

