// ignore_for_file: unused_element, unnecessary_cast

import 'log_rules.dart';
import 'metric_rules.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesProperties {
  /// Configuration to enable/disable auto-muting flag
  final bool? automuting;
  /// Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  final bool? customMetrics;
  /// Set of rules for sending logs for the Monitor resource.
  final LogRules? logRules;
  /// Set of rules for sending metrics for the Monitor resource.
  final MetricRules? metricRules;

  /// Creates a new [MonitoringTagRulesProperties].
  /// [automuting] Configuration to enable/disable auto-muting flag
  /// [customMetrics] Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  /// [logRules] Set of rules for sending logs for the Monitor resource.
  /// [metricRules] Set of rules for sending metrics for the Monitor resource.
  MonitoringTagRulesProperties({
    this.automuting,
    this.customMetrics,
    this.logRules,
    this.metricRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automuting': ?automuting,
      'customMetrics': ?customMetrics,
      'logRules': ?logRules == null ? null : logRules!.toMap(),
      'metricRules': ?metricRules == null ? null : metricRules!.toMap(),
    };
  }

  factory MonitoringTagRulesProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesProperties(
      automuting: map['automuting'] == null ? null : map['automuting'] as bool,
      customMetrics: map['customMetrics'] == null ? null : map['customMetrics'] as bool,
      logRules: map['logRules'] == null ? null : LogRules.fromMap((map['logRules'] as Map).cast<String, dynamic>()),
      metricRules: map['metricRules'] == null ? null : MetricRules.fromMap((map['metricRules'] as Map).cast<String, dynamic>()),
    );
  }
}

