// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compression_settings_response.dart';

/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class AfdRouteCacheConfigurationResponse {
  /// compression settings.
  final pulumi.Input<CompressionSettingsResponse>? compressionSettings;
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;
  /// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  final pulumi.Input<String>? queryStringCachingBehavior;

  /// Creates a new [AfdRouteCacheConfigurationResponse].
  /// [compressionSettings] compression settings.
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringCachingBehavior] Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  AfdRouteCacheConfigurationResponse({
    this.compressionSettings,
    this.queryParameters,
    this.queryStringCachingBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionSettings': ?pulumi.Input.mapOptionalInputValue<CompressionSettingsResponse, Map<String, dynamic>>(compressionSettings, (value) => value.toMap()),
      'queryParameters': ?queryParameters,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
    };
  }

  factory AfdRouteCacheConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AfdRouteCacheConfigurationResponse(
      compressionSettings: map['compressionSettings'] == null ? null : (CompressionSettingsResponse.fromMap((map['compressionSettings'] as Map).cast<String, dynamic>())).input(),
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters'] as String).input(),
      queryStringCachingBehavior: map['queryStringCachingBehavior'] == null ? null : (map['queryStringCachingBehavior'] as String).input(),
    );
  }
}

