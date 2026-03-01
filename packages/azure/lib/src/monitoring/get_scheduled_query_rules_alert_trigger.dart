// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_query_rules_alert_trigger_metric_trigger.dart';

class GetScheduledQueryRulesAlertTrigger {
  final List<GetScheduledQueryRulesAlertTriggerMetricTrigger> metricTriggers;
  /// Evaluation operation for rule.
  final String operator;
  /// Result or count threshold based on which rule should be triggered.
  final double threshold;

  /// Creates a new [GetScheduledQueryRulesAlertTrigger].
  /// [metricTriggers] Required.
  /// [operator] Evaluation operation for rule.
  /// [threshold] Result or count threshold based on which rule should be triggered.
  GetScheduledQueryRulesAlertTrigger({
    required this.metricTriggers,
    required this.operator,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTriggers': pulumi.Input.encodeList<GetScheduledQueryRulesAlertTriggerMetricTrigger, Map<String, dynamic>>(metricTriggers, (value) => value.toMap()),
      'operator': operator,
      'threshold': threshold,
    };
  }

  factory GetScheduledQueryRulesAlertTrigger.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertTrigger(
      metricTriggers: pulumi.Input.decodeList<GetScheduledQueryRulesAlertTriggerMetricTrigger>(map['metricTriggers'], (value) => GetScheduledQueryRulesAlertTriggerMetricTrigger.fromMap((value as Map).cast<String, dynamic>())),
      operator: map['operator'] as String,
      threshold: map['threshold'] as double,
    );
  }
}

