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
  DistributionCacheBehaviorSettings({
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
      allowedHttpMethods: map['allowedHttpMethods'] == null ? null : ((map['allowedHttpMethods'] as String).input()).input(),
      cachedHttpMethods: map['cachedHttpMethods'] == null ? null : ((map['cachedHttpMethods'] as String).input()).input(),
      defaultTtl: map['defaultTtl'] == null ? null : ((map['defaultTtl'] as int).input()).input(),
      forwardedCookies: map['forwardedCookies'] == null ? null : ((DistributionCacheBehaviorSettingsForwardedCookies.fromMap((map['forwardedCookies']! as Map).cast<String, dynamic>())).input()).input(),
      forwardedHeaders: map['forwardedHeaders'] == null ? null : ((DistributionCacheBehaviorSettingsForwardedHeaders.fromMap((map['forwardedHeaders']! as Map).cast<String, dynamic>())).input()).input(),
      forwardedQueryStrings: map['forwardedQueryStrings'] == null ? null : ((DistributionCacheBehaviorSettingsForwardedQueryStrings.fromMap((map['forwardedQueryStrings']! as Map).cast<String, dynamic>())).input()).input(),
      maximumTtl: map['maximumTtl'] == null ? null : ((map['maximumTtl'] as int).input()).input(),
      minimumTtl: map['minimumTtl'] == null ? null : ((map['minimumTtl'] as int).input()).input(),
    );
  }
}

