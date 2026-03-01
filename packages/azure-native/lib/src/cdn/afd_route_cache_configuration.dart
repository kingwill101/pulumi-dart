// ignore_for_file: unused_element, unnecessary_cast

import 'compression_settings.dart';

/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class AfdRouteCacheConfiguration {
  /// compression settings.
  final CompressionSettings? compressionSettings;
  /// query parameters to include or exclude (comma separated).
  final String? queryParameters;
  /// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  final String? queryStringCachingBehavior;

  /// Creates a new [AfdRouteCacheConfiguration].
  /// [compressionSettings] compression settings.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringCachingBehavior] Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  AfdRouteCacheConfiguration({
    this.compressionSettings,
    this.queryParameters,
    this.queryStringCachingBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionSettings': ?compressionSettings == null ? null : compressionSettings!.toMap(),
      'queryParameters': ?queryParameters,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
    };
  }

  factory AfdRouteCacheConfiguration.fromMap(Map<String, dynamic> map) {
    return AfdRouteCacheConfiguration(
      compressionSettings: map['compressionSettings'] == null ? null : CompressionSettings.fromMap((map['compressionSettings'] as Map).cast<String, dynamic>()),
      queryParameters: map['queryParameters'] == null ? null : map['queryParameters'] as String,
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : map['queryStringCachingBehavior'] as String,
    );
  }
}

