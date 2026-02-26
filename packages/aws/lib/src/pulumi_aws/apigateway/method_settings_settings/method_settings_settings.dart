// ignore_for_file: unused_element, unnecessary_cast

class MethodSettingsSettings {
  /// Whether the cached responses are encrypted.
  final bool? cacheDataEncrypted;

  /// Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached.
  final int? cacheTtlInSeconds;

  /// Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached.
  final bool? cachingEnabled;

  /// Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs.
  final bool? dataTraceEnabled;

  /// Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are `OFF`, `ERROR`, and `INFO`.
  final String? loggingLevel;

  /// Whether Amazon CloudWatch metrics are enabled for this method.
  final bool? metricsEnabled;

  /// Whether authorization is required for a cache invalidation request.
  final bool? requireAuthorizationForCacheControl;

  /// Throttling burst limit. Default: `-1` (throttling disabled).
  final int? throttlingBurstLimit;

  /// Throttling rate limit. Default: `-1` (throttling disabled).
  final double? throttlingRateLimit;

  /// How to handle unauthorized requests for cache invalidation. The available values are `FAIL_WITH_403`, `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`.
  final String? unauthorizedCacheControlHeaderStrategy;

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
    final map = <String, dynamic>{};
    final cacheDataEncryptedValue = cacheDataEncrypted;
    if (cacheDataEncryptedValue != null) {
      map['cacheDataEncrypted'] = cacheDataEncryptedValue;
    }
    final cacheTtlInSecondsValue = cacheTtlInSeconds;
    if (cacheTtlInSecondsValue != null) {
      map['cacheTtlInSeconds'] = cacheTtlInSecondsValue;
    }
    final cachingEnabledValue = cachingEnabled;
    if (cachingEnabledValue != null) {
      map['cachingEnabled'] = cachingEnabledValue;
    }
    final dataTraceEnabledValue = dataTraceEnabled;
    if (dataTraceEnabledValue != null) {
      map['dataTraceEnabled'] = dataTraceEnabledValue;
    }
    final loggingLevelValue = loggingLevel;
    if (loggingLevelValue != null) {
      map['loggingLevel'] = loggingLevelValue;
    }
    final metricsEnabledValue = metricsEnabled;
    if (metricsEnabledValue != null) {
      map['metricsEnabled'] = metricsEnabledValue;
    }
    final requireAuthorizationForCacheControlValue =
        requireAuthorizationForCacheControl;
    if (requireAuthorizationForCacheControlValue != null) {
      map['requireAuthorizationForCacheControl'] =
          requireAuthorizationForCacheControlValue;
    }
    final throttlingBurstLimitValue = throttlingBurstLimit;
    if (throttlingBurstLimitValue != null) {
      map['throttlingBurstLimit'] = throttlingBurstLimitValue;
    }
    final throttlingRateLimitValue = throttlingRateLimit;
    if (throttlingRateLimitValue != null) {
      map['throttlingRateLimit'] = throttlingRateLimitValue;
    }
    final unauthorizedCacheControlHeaderStrategyValue =
        unauthorizedCacheControlHeaderStrategy;
    if (unauthorizedCacheControlHeaderStrategyValue != null) {
      map['unauthorizedCacheControlHeaderStrategy'] =
          unauthorizedCacheControlHeaderStrategyValue;
    }
    return map;
  }

  factory MethodSettingsSettings.fromMap(Map<String, dynamic> map) {
    return MethodSettingsSettings(
      cacheDataEncrypted: map['cacheDataEncrypted'] == null
          ? null
          : map['cacheDataEncrypted'] as bool,
      cacheTtlInSeconds: map['cacheTtlInSeconds'] == null
          ? null
          : map['cacheTtlInSeconds'] as int,
      cachingEnabled:
          map['cachingEnabled'] == null ? null : map['cachingEnabled'] as bool,
      dataTraceEnabled: map['dataTraceEnabled'] == null
          ? null
          : map['dataTraceEnabled'] as bool,
      loggingLevel:
          map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      metricsEnabled:
          map['metricsEnabled'] == null ? null : map['metricsEnabled'] as bool,
      requireAuthorizationForCacheControl:
          map['requireAuthorizationForCacheControl'] == null
              ? null
              : map['requireAuthorizationForCacheControl'] as bool,
      throttlingBurstLimit: map['throttlingBurstLimit'] == null
          ? null
          : map['throttlingBurstLimit'] as int,
      throttlingRateLimit: map['throttlingRateLimit'] == null
          ? null
          : map['throttlingRateLimit'] as double,
      unauthorizedCacheControlHeaderStrategy:
          map['unauthorizedCacheControlHeaderStrategy'] == null
              ? null
              : map['unauthorizedCacheControlHeaderStrategy'] as String,
    );
  }
}
