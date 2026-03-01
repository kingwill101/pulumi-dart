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
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? listenerId,
    pulumi.Output<int>? priority,
    pulumi.Output<List<RuleRuleAction>>? ruleActions,
    pulumi.Output<List<RuleRuleCondition>>? ruleConditions,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? status,
  }) :
      direction = pulumi.Input.asOptionalInput<String>(direction),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      ruleActions = pulumi.Input.asOptionalInput<List<RuleRuleAction>>(ruleActions),
      ruleConditions = pulumi.Input.asOptionalInput<List<RuleRuleCondition>>(ruleConditions),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      ruleActions: map['ruleActions'] == null ? null : pulumi.Output.create<List<RuleRuleAction>>(pulumi.Input.decodeList<RuleRuleAction>(map['ruleActions'], (value) => RuleRuleAction.fromMap((value as Map).cast<String, dynamic>()))),
      ruleConditions: map['ruleConditions'] == null ? null : pulumi.Output.create<List<RuleRuleCondition>>(pulumi.Input.decodeList<RuleRuleCondition>(map['ruleConditions'], (value) => RuleRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

