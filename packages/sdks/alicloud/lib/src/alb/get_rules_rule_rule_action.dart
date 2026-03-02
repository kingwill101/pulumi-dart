// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_action_fixed_response_config.dart';
import 'get_rules_rule_rule_action_forward_group_config.dart';
import 'get_rules_rule_rule_action_insert_header_config.dart';
import 'get_rules_rule_rule_action_redirect_config.dart';
import 'get_rules_rule_rule_action_rewrite_config.dart';
import 'get_rules_rule_rule_action_traffic_limit_config.dart';
import 'get_rules_rule_rule_action_traffic_mirror_config.dart';

class GetRulesRuleRuleAction {
  /// The configuration of the fixed response.
  final pulumi.Input<List<GetRulesRuleRuleActionFixedResponseConfig>> fixedResponseConfigs;
  /// The configurations of the destination server groups.
  final pulumi.Input<List<GetRulesRuleRuleActionForwardGroupConfig>> forwardGroupConfigs;
  /// The configuration of the inserted header field.
  final pulumi.Input<List<GetRulesRuleRuleActionInsertHeaderConfig>> insertHeaderConfigs;
  /// The order of the forwarding rule actions.
  final pulumi.Input<int> order;
  /// The configuration of the external redirect action.
  final pulumi.Input<List<GetRulesRuleRuleActionRedirectConfig>> redirectConfigs;
  /// The redirect action within ALB.
  final pulumi.Input<List<GetRulesRuleRuleActionRewriteConfig>> rewriteConfigs;
  /// The Flow speed limit.
  final pulumi.Input<List<GetRulesRuleRuleActionTrafficLimitConfig>> trafficLimitConfigs;
  /// The Traffic mirroring.
  final pulumi.Input<List<GetRulesRuleRuleActionTrafficMirrorConfig>> trafficMirrorConfigs;
  /// The type of the forwarding rule.
  final pulumi.Input<String> type;

  /// Creates a new [GetRulesRuleRuleAction].
  /// [fixedResponseConfigs] The configuration of the fixed response.
  /// [forwardGroupConfigs] The configurations of the destination server groups.
  /// [insertHeaderConfigs] The configuration of the inserted header field.
  /// [order] The order of the forwarding rule actions.
  /// [redirectConfigs] The configuration of the external redirect action.
  /// [rewriteConfigs] The redirect action within ALB.
  /// [trafficLimitConfigs] The Flow speed limit.
  /// [trafficMirrorConfigs] The Traffic mirroring.
  /// [type] The type of the forwarding rule.
  GetRulesRuleRuleAction({
    required this.fixedResponseConfigs,
    required this.forwardGroupConfigs,
    required this.insertHeaderConfigs,
    required this.order,
    required this.redirectConfigs,
    required this.rewriteConfigs,
    required this.trafficLimitConfigs,
    required this.trafficMirrorConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedResponseConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionFixedResponseConfig>, List<Map<String, dynamic>>>(fixedResponseConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionFixedResponseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardGroupConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionForwardGroupConfig>, List<Map<String, dynamic>>>(forwardGroupConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionForwardGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insertHeaderConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionInsertHeaderConfig>, List<Map<String, dynamic>>>(insertHeaderConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionInsertHeaderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': order,
      'redirectConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionRedirectConfig>, List<Map<String, dynamic>>>(redirectConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionRedirectConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rewriteConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionRewriteConfig>, List<Map<String, dynamic>>>(rewriteConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionRewriteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trafficLimitConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionTrafficLimitConfig>, List<Map<String, dynamic>>>(trafficLimitConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficLimitConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trafficMirrorConfigs': pulumi.Input.mapInputValue<List<GetRulesRuleRuleActionTrafficMirrorConfig>, List<Map<String, dynamic>>>(trafficMirrorConfigs, (value) => pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficMirrorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetRulesRuleRuleAction.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleAction(
      fixedResponseConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionFixedResponseConfig>(map['fixedResponseConfigs'], (value) => GetRulesRuleRuleActionFixedResponseConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forwardGroupConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionForwardGroupConfig>(map['forwardGroupConfigs'], (value) => GetRulesRuleRuleActionForwardGroupConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      insertHeaderConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionInsertHeaderConfig>(map['insertHeaderConfigs'], (value) => GetRulesRuleRuleActionInsertHeaderConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      order: (map['order'] as int).input(),
      redirectConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionRedirectConfig>(map['redirectConfigs'], (value) => GetRulesRuleRuleActionRedirectConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rewriteConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionRewriteConfig>(map['rewriteConfigs'], (value) => GetRulesRuleRuleActionRewriteConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trafficLimitConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficLimitConfig>(map['trafficLimitConfigs'], (value) => GetRulesRuleRuleActionTrafficLimitConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trafficMirrorConfigs: (pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficMirrorConfig>(map['trafficMirrorConfigs'], (value) => GetRulesRuleRuleActionTrafficMirrorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

