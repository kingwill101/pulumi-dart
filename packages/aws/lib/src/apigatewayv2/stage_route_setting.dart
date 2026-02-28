// ignore_for_file: unused_element, unnecessary_cast

class StageRouteSetting {
  /// Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Defaults to `false`. Supported only for WebSocket APIs.
  final bool? dataTraceEnabled;

  /// Whether detailed metrics are enabled for the route. Defaults to `false`.
  final bool? detailedMetricsEnabled;

  /// Logging level for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Valid values: `ERROR`, `INFO`, `OFF`. Defaults to `OFF`. Supported only for WebSocket APIs. This provider will only perform drift detection of its value when present in a configuration.
  final String? loggingLevel;

  /// Route key.
  final String routeKey;

  /// Throttling burst limit for the route.
  final int? throttlingBurstLimit;

  /// Throttling rate limit for the route.
  final double? throttlingRateLimit;

  /// Creates a new [StageRouteSetting].
  /// [dataTraceEnabled] Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// [detailedMetricsEnabled] Whether detailed metrics are enabled for the route. Defaults to `false`.
  /// [loggingLevel] Logging level for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// [routeKey] Route key.
  /// [throttlingBurstLimit] Throttling burst limit for the route.
  /// [throttlingRateLimit] Throttling rate limit for the route.
  StageRouteSetting({
    this.dataTraceEnabled,
    this.detailedMetricsEnabled,
    this.loggingLevel,
    required this.routeKey,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataTraceEnabledValue = dataTraceEnabled;
    if (dataTraceEnabledValue != null) {
      map['dataTraceEnabled'] = dataTraceEnabledValue;
    }
    final detailedMetricsEnabledValue = detailedMetricsEnabled;
    if (detailedMetricsEnabledValue != null) {
      map['detailedMetricsEnabled'] = detailedMetricsEnabledValue;
    }
    final loggingLevelValue = loggingLevel;
    if (loggingLevelValue != null) {
      map['loggingLevel'] = loggingLevelValue;
    }
    map['routeKey'] = routeKey;
    final throttlingBurstLimitValue = throttlingBurstLimit;
    if (throttlingBurstLimitValue != null) {
      map['throttlingBurstLimit'] = throttlingBurstLimitValue;
    }
    final throttlingRateLimitValue = throttlingRateLimit;
    if (throttlingRateLimitValue != null) {
      map['throttlingRateLimit'] = throttlingRateLimitValue;
    }
    return map;
  }

  factory StageRouteSetting.fromMap(Map<String, dynamic> map) {
    return StageRouteSetting(
      dataTraceEnabled: map['dataTraceEnabled'] == null
          ? null
          : map['dataTraceEnabled'] as bool,
      detailedMetricsEnabled: map['detailedMetricsEnabled'] == null
          ? null
          : map['detailedMetricsEnabled'] as bool,
      loggingLevel:
          map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      routeKey: map['routeKey'] as String,
      throttlingBurstLimit: map['throttlingBurstLimit'] == null
          ? null
          : map['throttlingBurstLimit'] as int,
      throttlingRateLimit: map['throttlingRateLimit'] == null
          ? null
          : map['throttlingRateLimit'] as double,
    );
  }
}
