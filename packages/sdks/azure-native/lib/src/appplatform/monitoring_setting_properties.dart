// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error.dart';

/// Monitoring Setting properties payload
class MonitoringSettingProperties {
  /// Target application insight instrumentation key, null or whitespace include empty will disable monitoringSettings
  final pulumi.Input<String>? appInsightsInstrumentationKey;
  /// Indicates the sampling rate of application insight agent, should be in range [0.0, 100.0]
  final pulumi.Input<double>? appInsightsSamplingRate;
  /// Error when apply Monitoring Setting changes.
  final pulumi.Input<Error>? error;
  /// Indicates whether enable the trace functionality, which will be deprecated since api version 2020-11-01-preview. Please leverage appInsightsInstrumentationKey to indicate if monitoringSettings enabled or not
  final pulumi.Input<bool>? traceEnabled;

  /// Creates a new [MonitoringSettingProperties].
  /// [appInsightsInstrumentationKey] Target application insight instrumentation key, null or whitespace include empty will disable monitoringSettings
  /// [appInsightsSamplingRate] Indicates the sampling rate of application insight agent, should be in range [0.0, 100.0]
  /// [error] Error when apply Monitoring Setting changes.
  /// [traceEnabled] Indicates whether enable the trace functionality, which will be deprecated since api version 2020-11-01-preview. Please leverage appInsightsInstrumentationKey to indicate if monitoringSettings enabled or not
  MonitoringSettingProperties({
    this.appInsightsInstrumentationKey,
    this.appInsightsSamplingRate,
    this.error,
    this.traceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsInstrumentationKey': ?appInsightsInstrumentationKey,
      'appInsightsSamplingRate': ?appInsightsSamplingRate,
      'error': ?pulumi.Input.mapOptionalInputValue<Error, Map<String, dynamic>>(error, (value) => value.toMap()),
      'traceEnabled': ?traceEnabled,
    };
  }

  factory MonitoringSettingProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingProperties(
      appInsightsInstrumentationKey: map['appInsightsInstrumentationKey'] == null ? null : (map['appInsightsInstrumentationKey'] as String).input(),
      appInsightsSamplingRate: map['appInsightsSamplingRate'] == null ? null : (map['appInsightsSamplingRate'] as double).input(),
      error: map['error'] == null ? null : (Error.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      traceEnabled: map['traceEnabled'] == null ? null : (map['traceEnabled'] as bool).input(),
    );
  }
}

