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
      'requireAuthorizationForCacheControl': ?requireAuthorizationForCacheControl,
      'throttlingBurstLimit': ?throttlingBurstLimit,
      'throttlingRateLimit': ?throttlingRateLimit,
      'unauthorizedCacheControlHeaderStrategy': ?unauthorizedCacheControlHeaderStrategy,
    };
  }

  factory MethodSettingsSettings.fromMap(Map<String, dynamic> map) {
    return MethodSettingsSettings(
      cacheDataEncrypted: map['cacheDataEncrypted'] == null ? null : map['cacheDataEncrypted'] as bool,
      cacheTtlInSeconds: map['cacheTtlInSeconds'] == null ? null : map['cacheTtlInSeconds'] as int,
      cachingEnabled: map['cachingEnabled'] == null ? null : map['cachingEnabled'] as bool,
      dataTraceEnabled: map['dataTraceEnabled'] == null ? null : map['dataTraceEnabled'] as bool,
      loggingLevel: map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      metricsEnabled: map['metricsEnabled'] == null ? null : map['metricsEnabled'] as bool,
      requireAuthorizationForCacheControl: map['requireAuthorizationForCacheControl'] == null ? null : map['requireAuthorizationForCacheControl'] as bool,
      throttlingBurstLimit: map['throttlingBurstLimit'] == null ? null : map['throttlingBurstLimit'] as int,
      throttlingRateLimit: map['throttlingRateLimit'] == null ? null : map['throttlingRateLimit'] as double,
      unauthorizedCacheControlHeaderStrategy: map['unauthorizedCacheControlHeaderStrategy'] == null ? null : map['unauthorizedCacheControlHeaderStrategy'] as String,
    );
  }
}

