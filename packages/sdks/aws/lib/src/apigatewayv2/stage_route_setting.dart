// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StageRouteSetting {
  /// Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Defaults to `false`. Supported only for WebSocket APIs.
  final pulumi.Input<bool>? dataTraceEnabled;

  /// Whether detailed metrics are enabled for the route. Defaults to `false`.
  final pulumi.Input<bool>? detailedMetricsEnabled;

  /// Logging level for the route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Valid values: `ERROR`, `INFO`, `OFF`. Defaults to `OFF`. Supported only for WebSocket APIs. This provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? loggingLevel;

  /// Route key.
  final pulumi.Input<String> routeKey;

  /// Throttling burst limit for the route.
  final pulumi.Input<int>? throttlingBurstLimit;

  /// Throttling rate limit for the route.
  final pulumi.Input<double>? throttlingRateLimit;

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
    return <String, dynamic>{
      'dataTraceEnabled': ?dataTraceEnabled,
      'detailedMetricsEnabled': ?detailedMetricsEnabled,
      'loggingLevel': ?loggingLevel,
      'routeKey': routeKey,
      'throttlingBurstLimit': ?throttlingBurstLimit,
      'throttlingRateLimit': ?throttlingRateLimit,
    };
  }

  factory StageRouteSetting.fromMap(Map<String, dynamic> map) {
    return StageRouteSetting(
      dataTraceEnabled: (() {
        final guardedValue = map['dataTraceEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      detailedMetricsEnabled: (() {
        final guardedValue = map['detailedMetricsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loggingLevel: (() {
        final guardedValue = map['loggingLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeKey: pulumi.Input.fromValue(map['routeKey'] as String),
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
    );
  }
}
