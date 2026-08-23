// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_rule_filter_value.dart';

class AgentcoreOnlineEvaluationConfigRuleFilter {
  /// Key or field name to filter on within the agent trace data.
  final pulumi.Input<String> key;
  /// Comparison operator. Valid values: `Equals`, `NotEquals`, `GreaterThan`, `LessThan`, `GreaterThanOrEqual`, `LessThanOrEqual`, `Contains`, `NotContains`.
  final pulumi.Input<String> operator;
  /// Value to compare against. See `value` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigRuleFilterValue> value;

  /// Creates a new [AgentcoreOnlineEvaluationConfigRuleFilter].
  /// [key] Key or field name to filter on within the agent trace data.
  /// [operator] Comparison operator. Valid values: `Equals`, `NotEquals`, `GreaterThan`, `LessThan`, `GreaterThanOrEqual`, `LessThanOrEqual`, `Contains`, `NotContains`.
  /// [value] Value to compare against. See `value` Block below.
  const AgentcoreOnlineEvaluationConfigRuleFilter({
    required this.key,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'value': pulumi.Input.mapInputValue<AgentcoreOnlineEvaluationConfigRuleFilterValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory AgentcoreOnlineEvaluationConfigRuleFilter.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigRuleFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigRuleFilterValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}
