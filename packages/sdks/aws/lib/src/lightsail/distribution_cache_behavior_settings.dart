// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_cache_behavior_settings_forwarded_cookies.dart';
import 'distribution_cache_behavior_settings_forwarded_headers.dart';
import 'distribution_cache_behavior_settings_forwarded_query_strings.dart';

class DistributionCacheBehaviorSettings {
  /// HTTP methods that are processed and forwarded to the distribution's origin.
  final pulumi.Input<String>? allowedHttpMethods;
  /// HTTP method responses that are cached by your distribution.
  final pulumi.Input<String>? cachedHttpMethods;
  /// Default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
  final pulumi.Input<int>? defaultTtl;
  /// Cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded. See below.
  final pulumi.Input<DistributionCacheBehaviorSettingsForwardedCookies>? forwardedCookies;
  /// Headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded. See below.
  final pulumi.Input<DistributionCacheBehaviorSettingsForwardedHeaders>? forwardedHeaders;
  /// Query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded. See below.
  final pulumi.Input<DistributionCacheBehaviorSettingsForwardedQueryStrings>? forwardedQueryStrings;
  /// Maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
  final pulumi.Input<int>? maximumTtl;
  /// Minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
  final pulumi.Input<int>? minimumTtl;

  /// Creates a new [DistributionCacheBehaviorSettings].
  /// [allowedHttpMethods] HTTP methods that are processed and forwarded to the distribution's origin.
  /// [cachedHttpMethods] HTTP method responses that are cached by your distribution.
  /// [defaultTtl] Default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated.
  /// [forwardedCookies] Cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded. See below.
  /// [forwardedHeaders] Headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded. See below.
  /// [forwardedQueryStrings] Query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded. See below.
  /// [maximumTtl] Maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
  /// [minimumTtl] Minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated.
  const DistributionCacheBehaviorSettings({
    this.allowedHttpMethods,
    this.cachedHttpMethods,
    this.defaultTtl,
    this.forwardedCookies,
    this.forwardedHeaders,
    this.forwardedQueryStrings,
    this.maximumTtl,
    this.minimumTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHttpMethods': ?allowedHttpMethods,
      'cachedHttpMethods': ?cachedHttpMethods,
      'defaultTtl': ?defaultTtl,
      'forwardedCookies': ?pulumi.Input.mapOptionalInputValue<DistributionCacheBehaviorSettingsForwardedCookies, Map<String, dynamic>>(forwardedCookies, (value) => value.toMap()),
      'forwardedHeaders': ?pulumi.Input.mapOptionalInputValue<DistributionCacheBehaviorSettingsForwardedHeaders, Map<String, dynamic>>(forwardedHeaders, (value) => value.toMap()),
      'forwardedQueryStrings': ?pulumi.Input.mapOptionalInputValue<DistributionCacheBehaviorSettingsForwardedQueryStrings, Map<String, dynamic>>(forwardedQueryStrings, (value) => value.toMap()),
      'maximumTtl': ?maximumTtl,
      'minimumTtl': ?minimumTtl,
    };
  }

  factory DistributionCacheBehaviorSettings.fromMap(Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettings(
      allowedHttpMethods: (() { final guardedValue = map['allowedHttpMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cachedHttpMethods: (() { final guardedValue = map['cachedHttpMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      forwardedCookies: (() { final guardedValue = map['forwardedCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionCacheBehaviorSettingsForwardedCookies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardedHeaders: (() { final guardedValue = map['forwardedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionCacheBehaviorSettingsForwardedHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardedQueryStrings: (() { final guardedValue = map['forwardedQueryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionCacheBehaviorSettingsForwardedQueryStrings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumTtl: (() { final guardedValue = map['maximumTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumTtl: (() { final guardedValue = map['minimumTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

