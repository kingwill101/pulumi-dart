// ignore_for_file: unused_element, unnecessary_cast

class StageDefaultRouteSettings {
  /// Whether data trace logging is enabled for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Supported only for WebSocket APIs.
  final bool? dataTraceEnabled;

  /// Whether detailed metrics are enabled for the default route. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? detailedMetricsEnabled;

  /// Logging level for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Valid values: `ERROR`, `INFO`, `OFF`. Defaults to `OFF`. Supported only for WebSocket APIs. This provider will only perform drift detection of its value when present in a configuration.
  final String? loggingLevel;

  /// Throttling burst limit for the default route.
  final int? throttlingBurstLimit;

  /// Throttling rate limit for the default route.
  final double? throttlingRateLimit;

  StageDefaultRouteSettings({
    this.dataTraceEnabled,
    this.detailedMetricsEnabled,
    this.loggingLevel,
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

  factory StageDefaultRouteSettings.fromMap(Map<String, dynamic> map) {
    return StageDefaultRouteSettings(
      dataTraceEnabled: map['dataTraceEnabled'] == null
          ? null
          : map['dataTraceEnabled'] as bool,
      detailedMetricsEnabled: map['detailedMetricsEnabled'] == null
          ? null
          : map['detailedMetricsEnabled'] as bool,
      loggingLevel:
          map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      throttlingBurstLimit: map['throttlingBurstLimit'] == null
          ? null
          : map['throttlingBurstLimit'] as int,
      throttlingRateLimit: map['throttlingRateLimit'] == null
          ? null
          : map['throttlingRateLimit'] as double,
    );
  }
}
