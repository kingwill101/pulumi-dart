// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_rule_action.dart';
import 'rule_rule_condition.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The direction to which the forwarding rule is applied. Default value: `Request`. Valid values:
  /// - `Request`: The forwarding rule is applied to the client requests received by ALB.
  /// - `Response`: The forwarding rule is applied to the responses returned by backend servers.
  final pulumi.Input<String>? direction;
  /// Specifies whether to precheck this request.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the listener to which the forwarding rule belongs.
  final pulumi.Input<String>? listenerId;
  /// The priority of the rule. Valid values: `1` to `10000`. A smaller value indicates a higher priority. **Note*:* The priority of each rule within the same listener must be unique.
  final pulumi.Input<int>? priority;
  /// The actions of the forwarding rules. See `rule_actions` below.
  final pulumi.Input<List<RuleRuleAction>>? ruleActions;
  /// The conditions of the forwarding rule. See `rule_conditions` below.
  final pulumi.Input<List<RuleRuleCondition>>? ruleConditions;
  /// The name of the forwarding rule. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? ruleName;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [RuleState].
  /// [direction] The direction to which the forwarding rule is applied. Default value: `Request`. Valid values:
  /// [dryRun] Specifies whether to precheck this request.
  /// [listenerId] The ID of the listener to which the forwarding rule belongs.
  /// [priority] The priority of the rule. Valid values: `1` to `10000`. A smaller value indicates a higher priority. **Note*:* The priority of each rule within the same listener must be unique.
  /// [ruleActions] The actions of the forwarding rules. See `rule_actions` below.
  /// [ruleConditions] The conditions of the forwarding rule. See `rule_conditions` below.
  /// [ruleName] The name of the forwarding rule. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  /// [status] The status of the resource.
  RuleState({
    this.direction,
    this.dryRun,
    this.listenerId,
    this.priority,
    this.ruleActions,
    this.ruleConditions,
    this.ruleName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'dryRun': ?dryRun,
      'listenerId': ?listenerId,
      'priority': ?priority,
      'ruleActions': ?pulumi.Input.mapOptionalInputValue<List<RuleRuleAction>, List<Map<String, dynamic>>>(ruleActions, (value) => pulumi.Input.encodeList<RuleRuleAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleConditions': ?pulumi.Input.mapOptionalInputValue<List<RuleRuleCondition>, List<Map<String, dynamic>>>(ruleConditions, (value) => pulumi.Input.encodeList<RuleRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleName': ?ruleName,
      'status': ?status,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      ruleActions: map['ruleActions'] == null ? null : (pulumi.Input.decodeList<RuleRuleAction>(map['ruleActions']!, (value) => RuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleConditions: map['ruleConditions'] == null ? null : (pulumi.Input.decodeList<RuleRuleCondition>(map['ruleConditions']!, (value) => RuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

