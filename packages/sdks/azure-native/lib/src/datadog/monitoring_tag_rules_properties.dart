// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_rules.dart';
import 'metric_rules.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesProperties {
  /// Configuration to enable/disable auto-muting flag
  final pulumi.Input<bool>? automuting;
  /// Configuration to enable/disable custom metrics. If enabled, custom metrics from app insights will be sent.
  final pulumi.Input<bool>? customMetrics;
  /// Set of rules for sending logs for the Monitor resource.
  final pulumi.Input<LogRules>? logRules;
  /// Set of rules for sending metrics for the Monitor resource.
  final pulumi.Input<MetricRules>? metricRules;

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
      'logRules': ?pulumi.Input.mapOptionalInputValue<LogRules, Map<String, dynamic>>(logRules, (value) => value.toMap()),
      'metricRules': ?pulumi.Input.mapOptionalInputValue<MetricRules, Map<String, dynamic>>(metricRules, (value) => value.toMap()),
    };
  }

  factory MonitoringTagRulesProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesProperties(
      automuting: map['automuting'] == null ? null : (map['automuting']! as bool).input(),
      customMetrics: map['customMetrics'] == null ? null : (map['customMetrics']! as bool).input(),
      logRules: map['logRules'] == null ? null : (LogRules.fromMap((map['logRules']! as Map).cast<String, dynamic>())).input(),
      metricRules: map['metricRules'] == null ? null : (MetricRules.fromMap((map['metricRules']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

