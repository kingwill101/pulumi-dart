// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_log_rule.dart';
import 'tag_rules_metric_rule.dart';

/// {@template pulumi_dynatrace_tag_rules_tag_rules_args_doc}
/// The set of arguments for TagRules.
/// {@endtemplate}
/// {@macro pulumi_dynatrace_tag_rules_tag_rules_args_doc}
class TagRulesArgs {
  /// Set of rules for sending logs for the Monitor resource. A `log_rule` block as defined below.
  final pulumi.Input<TagRulesLogRule>? logRule;
  /// Set of rules for sending metrics for the Monitor resource. A `metric_rule` block as defined below.
  final pulumi.Input<TagRulesMetricRule>? metricRule;
  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String> monitorId;
  /// Name of the Dynatrace tag rules. Currently, the only supported value is `default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [TagRulesArgs].
  /// [logRule] Set of rules for sending logs for the Monitor resource. A `log_rule` block as defined below.
  /// [metricRule] Set of rules for sending metrics for the Monitor resource. A `metric_rule` block as defined below.
  /// [monitorId] Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  /// [name] Name of the Dynatrace tag rules. Currently, the only supported value is `default`. Changing this forces a new resource to be created.
  TagRulesArgs({
    TagRulesLogRule? logRule,
    TagRulesMetricRule? metricRule,
    required String monitorId,
    String? name,
  }) :
      logRule = pulumi.Input.asOptionalInput<TagRulesLogRule>(logRule),
      metricRule = pulumi.Input.asOptionalInput<TagRulesMetricRule>(metricRule),
      monitorId = pulumi.Input.asInput<String>(monitorId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logRule': ?pulumi.Input.mapOptionalInputValue<TagRulesLogRule, Map<String, dynamic>>(logRule, (value) => value.toMap()),
      'metricRule': ?pulumi.Input.mapOptionalInputValue<TagRulesMetricRule, Map<String, dynamic>>(metricRule, (value) => value.toMap()),
      'monitorId': monitorId,
      'name': ?name,
    };
  }

  factory TagRulesArgs.fromMap(Map<String, dynamic> map) {
    return TagRulesArgs(
      logRule: map['logRule'] == null ? null : TagRulesLogRule.fromMap((map['logRule'] as Map).cast<String, dynamic>()),
      metricRule: map['metricRule'] == null ? null : TagRulesMetricRule.fromMap((map['metricRule'] as Map).cast<String, dynamic>()),
      monitorId: map['monitorId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

