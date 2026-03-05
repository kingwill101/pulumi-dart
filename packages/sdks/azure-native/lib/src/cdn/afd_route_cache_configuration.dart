// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compression_settings.dart';

/// Caching settings for a caching-type route. To disable caching, do not provide a cacheConfiguration object.
class AfdRouteCacheConfiguration {
  /// compression settings.
  final pulumi.Input<CompressionSettings>? compressionSettings;
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;
  /// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
  final pulumi.Input<String>? queryStringCachingBehavior;

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
      'compressionSettings': ?pulumi.Input.mapOptionalInputValue<CompressionSettings, Map<String, dynamic>>(compressionSettings, (value) => value.toMap()),
      'queryParameters': ?queryParameters,
      'queryStringCachingBehavior': ?queryStringCachingBehavior,
    };
  }

  factory AfdRouteCacheConfiguration.fromMap(Map<String, dynamic> map) {
    return AfdRouteCacheConfiguration(
      compressionSettings: (() { final guardedValue = map['compressionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompressionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStringCachingBehavior: (() { final guardedValue = map['queryStringCachingBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

