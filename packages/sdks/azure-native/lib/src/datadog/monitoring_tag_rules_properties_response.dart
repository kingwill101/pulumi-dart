// ignore_for_file: unused_element, unnecessary_cast

import 'log_rules_response.dart';
import 'metric_rules_response.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesPropertiesResponse {
  /// Configuration to enable/disable auto-muting flag
  final bool? automuting;
  /// Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  final bool? customMetrics;
  /// Set of rules for sending logs for the Monitor resource.
  final LogRulesResponse? logRules;
  /// Set of rules for sending metrics for the Monitor resource.
  final MetricRulesResponse? metricRules;
  final String provisioningState;

  /// Creates a new [MonitoringTagRulesPropertiesResponse].
  /// [automuting] Configuration to enable/disable auto-muting flag
  /// [customMetrics] Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  /// [logRules] Set of rules for sending logs for the Monitor resource.
  /// [metricRules] Set of rules for sending metrics for the Monitor resource.
  /// [provisioningState] Required.
  MonitoringTagRulesPropertiesResponse({
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
      'logRules': ?logRules == null ? null : logRules!.toMap(),
      'metricRules': ?metricRules == null ? null : metricRules!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory MonitoringTagRulesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesPropertiesResponse(
      automuting: map['automuting'] == null ? null : map['automuting'] as bool,
      customMetrics: map['customMetrics'] == null ? null : map['customMetrics'] as bool,
      logRules: map['logRules'] == null ? null : LogRulesResponse.fromMap((map['logRules'] as Map).cast<String, dynamic>()),
      metricRules: map['metricRules'] == null ? null : MetricRulesResponse.fromMap((map['metricRules'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

