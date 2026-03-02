// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_rule_fixed_response.dart';

class LoadBalancerRule {
  /// Executes a specified response after matching the rule. See `fixed_response` below.
  final pulumi.Input<LoadBalancerRuleFixedResponse>? fixedResponse;
  /// Modifies the load balancer configuration for the corresponding request after matching the rule. The fields in this configuration will override the corresponding fields in the load balancer configuration.
  final pulumi.Input<String>? overrides;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  final pulumi.Input<int>? sequence;
  /// Whether to terminate the execution of subsequent rules.
  final pulumi.Input<bool>? terminates;

  /// Creates a new [LoadBalancerRule].
  /// [fixedResponse] Executes a specified response after matching the rule. See `fixed_response` below.
  /// [overrides] Modifies the load balancer configuration for the corresponding request after matching the rule. The fields in this configuration will override the corresponding fields in the load balancer configuration.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] Order of rule execution. The smaller the value, the higher the priority for execution.
  /// [terminates] Whether to terminate the execution of subsequent rules.
  LoadBalancerRule({
    this.fixedResponse,
    this.overrides,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.terminates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedResponse': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRuleFixedResponse, Map<String, dynamic>>(fixedResponse, (value) => value.toMap()),
      'overrides': ?overrides,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'terminates': ?terminates,
    };
  }

  factory LoadBalancerRule.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRule(
      fixedResponse: map['fixedResponse'] == null ? null : (LoadBalancerRuleFixedResponse.fromMap((map['fixedResponse']! as Map).cast<String, dynamic>())).input(),
      overrides: map['overrides'] == null ? null : (map['overrides']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence']! as int).input(),
      terminates: map['terminates'] == null ? null : (map['terminates']! as bool).input(),
    );
  }
}

