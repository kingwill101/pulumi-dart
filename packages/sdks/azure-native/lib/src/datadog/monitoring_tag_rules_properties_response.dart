// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_rules_response.dart';
import 'metric_rules_response.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesPropertiesResponse {
  /// Configuration to enable/disable auto-muting flag
  final pulumi.Input<bool>? automuting;
  /// Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  final pulumi.Input<bool>? customMetrics;
  /// Set of rules for sending logs for the Monitor resource.
  final pulumi.Input<LogRulesResponse>? logRules;
  /// Set of rules for sending metrics for the Monitor resource.
  final pulumi.Input<MetricRulesResponse>? metricRules;
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MonitoringTagRulesPropertiesResponse].
  /// [automuting] Configuration to enable/disable auto-muting flag
  /// [customMetrics] Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  /// [logRules] Set of rules for sending logs for the Monitor resource.
  /// [metricRules] Set of rules for sending metrics for the Monitor resource.
  /// [provisioningState] Required.
  const MonitoringTagRulesPropertiesResponse({
    this.automuting,
    this.customMetrics,
    this.logRules,
    this.metricRules,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automuting': ?automuting,
      'customMetrics': ?customMetrics,
      'logRules': ?pulumi.Input.mapOptionalInputValue<LogRulesResponse, Map<String, dynamic>>(logRules, (value) => value.toMap()),
      'metricRules': ?pulumi.Input.mapOptionalInputValue<MetricRulesResponse, Map<String, dynamic>>(metricRules, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory MonitoringTagRulesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesPropertiesResponse(
      automuting: (() { final guardedValue = map['automuting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customMetrics: (() { final guardedValue = map['customMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logRules: (() { final guardedValue = map['logRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricRules: (() { final guardedValue = map['metricRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

