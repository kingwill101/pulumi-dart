// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MethodSettingsSettings {
  /// Whether the cached responses are encrypted.
  final pulumi.Input<bool>? cacheDataEncrypted;

  /// Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  final pulumi.Input<int>? cacheTtlInSeconds;

  /// Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  final pulumi.Input<bool>? cachingEnabled;

  /// Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs.
  final pulumi.Input<bool>? dataTraceEnabled;

  /// Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are `OFF`, `ERROR`, and `INFO`.
  final pulumi.Input<String>? loggingLevel;

  /// Whether Amazon CloudWatch metrics are enabled for this method.
  final pulumi.Input<bool>? metricsEnabled;

  /// Whether authorization is required for a cache invalidation request.
  final pulumi.Input<bool>? requireAuthorizationForCacheControl;

  /// Throttling burst limit. Default: `-1` (throttling disabled).
  final pulumi.Input<int>? throttlingBurstLimit;

  /// Throttling rate limit. Default: `-1` (throttling disabled).
  final pulumi.Input<double>? throttlingRateLimit;

  /// How to handle unauthorized requests for cache invalidation. The available values are `FAIL_WITH_403`, `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
  final pulumi.Input<String>? unauthorizedCacheControlHeaderStrategy;

  /// Creates a new [MethodSettingsSettings].
  /// [cacheDataEncrypted] Whether the cached responses are encrypted.
  /// [cacheTtlInSeconds] Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  /// [cachingEnabled] Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  /// [dataTraceEnabled] Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs.
  /// [loggingLevel] Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are `OFF`, `ERROR`, and `INFO`.
  /// [metricsEnabled] Whether Amazon CloudWatch metrics are enabled for this method.
  /// [requireAuthorizationForCacheControl] Whether authorization is required for a cache invalidation request.
  /// [throttlingBurstLimit] Throttling burst limit. Default: `-1` (throttling disabled).
  /// [throttlingRateLimit] Throttling rate limit. Default: `-1` (throttling disabled).
  /// [unauthorizedCacheControlHeaderStrategy] How to handle unauthorized requests for cache invalidation. The available values are `FAIL_WITH_403`, `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
  MethodSettingsSettings({
    this.cacheDataEncrypted,
    this.cacheTtlInSeconds,
    this.cachingEnabled,
    this.dataTraceEnabled,
    this.loggingLevel,
    this.metricsEnabled,
    this.requireAuthorizationForCacheControl,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
    this.unauthorizedCacheControlHeaderStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheDataEncrypted': ?cacheDataEncrypted,
      'cacheTtlInSeconds': ?cacheTtlInSeconds,
      'cachingEnabled': ?cachingEnabled,
      'dataTraceEnabled': ?dataTraceEnabled,
      'loggingLevel': ?loggingLevel,
      'metricsEnabled': ?metricsEnabled,
      'requireAuthorizationForCacheControl':
          ?requireAuthorizationForCacheControl,
      'throttlingBurstLimit': ?throttlingBurstLimit,
      'throttlingRateLimit': ?throttlingRateLimit,
      'unauthorizedCacheControlHeaderStrategy':
          ?unauthorizedCacheControlHeaderStrategy,
    };
  }

  factory MethodSettingsSettings.fromMap(Map<String, dynamic> map) {
    return MethodSettingsSettings(
      cacheDataEncrypted: (() {
        final guardedValue = map['cacheDataEncrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cacheTtlInSeconds: (() {
        final guardedValue = map['cacheTtlInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cachingEnabled: (() {
        final guardedValue = map['cachingEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataTraceEnabled: (() {
        final guardedValue = map['dataTraceEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loggingLevel: (() {
        final guardedValue = map['loggingLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricsEnabled: (() {
        final guardedValue = map['metricsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requireAuthorizationForCacheControl: (() {
        final guardedValue = map['requireAuthorizationForCacheControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      throttlingBurstLimit: (() {
        final guardedValue = map['throttlingBurstLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      throttlingRateLimit: (() {
        final guardedValue = map['throttlingRateLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      unauthorizedCacheControlHeaderStrategy: (() {
        final guardedValue = map['unauthorizedCacheControlHeaderStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
