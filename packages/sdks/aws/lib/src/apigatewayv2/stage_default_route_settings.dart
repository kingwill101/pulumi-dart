// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StageDefaultRouteSettings {
  /// Whether data trace logging is enabled for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Defaults to `false`. Supported only for WebSocket APIs.
  final pulumi.Input<bool>? dataTraceEnabled;
  /// Whether detailed metrics are enabled for the default route. Defaults to `false`.
  final pulumi.Input<bool>? detailedMetricsEnabled;
  /// Logging level for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// Valid values: `ERROR`, `INFO`, `OFF`. Defaults to `OFF`. Supported only for WebSocket APIs. This provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? loggingLevel;
  /// Throttling burst limit for the default route.
  final pulumi.Input<int>? throttlingBurstLimit;
  /// Throttling rate limit for the default route.
  final pulumi.Input<double>? throttlingRateLimit;

  /// Creates a new [StageDefaultRouteSettings].
  /// [dataTraceEnabled] Whether data trace logging is enabled for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// [detailedMetricsEnabled] Whether detailed metrics are enabled for the default route. Defaults to `false`.
  /// [loggingLevel] Logging level for the default route. Affects the log entries pushed to Amazon CloudWatch Logs.
  /// [throttlingBurstLimit] Throttling burst limit for the default route.
  /// [throttlingRateLimit] Throttling rate limit for the default route.
  StageDefaultRouteSettings({
    this.dataTraceEnabled,
    this.detailedMetricsEnabled,
    this.loggingLevel,
    this.throttlingBurstLimit,
    this.throttlingRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTraceEnabled': ?dataTraceEnabled,
      'detailedMetricsEnabled': ?detailedMetricsEnabled,
      'loggingLevel': ?loggingLevel,
      'throttlingBurstLimit': ?throttlingBurstLimit,
      'throttlingRateLimit': ?throttlingRateLimit,
    };
  }

  factory StageDefaultRouteSettings.fromMap(Map<String, dynamic> map) {
    return StageDefaultRouteSettings(
      dataTraceEnabled: map['dataTraceEnabled'] == null ? null : ((map['dataTraceEnabled'] as bool).input()).input(),
      detailedMetricsEnabled: map['detailedMetricsEnabled'] == null ? null : ((map['detailedMetricsEnabled'] as bool).input()).input(),
      loggingLevel: map['loggingLevel'] == null ? null : ((map['loggingLevel'] as String).input()).input(),
      throttlingBurstLimit: map['throttlingBurstLimit'] == null ? null : ((map['throttlingBurstLimit'] as int).input()).input(),
      throttlingRateLimit: map['throttlingRateLimit'] == null ? null : ((map['throttlingRateLimit'] as double).input()).input(),
    );
  }
}

