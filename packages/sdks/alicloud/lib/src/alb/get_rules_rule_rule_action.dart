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
  final List<GetRulesRuleRuleActionFixedResponseConfig> fixedResponseConfigs;
  /// The configurations of the destination server groups.
  final List<GetRulesRuleRuleActionForwardGroupConfig> forwardGroupConfigs;
  /// The configuration of the inserted header field.
  final List<GetRulesRuleRuleActionInsertHeaderConfig> insertHeaderConfigs;
  /// The order of the forwarding rule actions.
  final int order;
  /// The configuration of the external redirect action.
  final List<GetRulesRuleRuleActionRedirectConfig> redirectConfigs;
  /// The redirect action within ALB.
  final List<GetRulesRuleRuleActionRewriteConfig> rewriteConfigs;
  /// The Flow speed limit.
  final List<GetRulesRuleRuleActionTrafficLimitConfig> trafficLimitConfigs;
  /// The Traffic mirroring.
  final List<GetRulesRuleRuleActionTrafficMirrorConfig> trafficMirrorConfigs;
  /// The type of the forwarding rule.
  final String type;

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
      'fixedResponseConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionFixedResponseConfig, Map<String, dynamic>>(fixedResponseConfigs, (value) => value.toMap()),
      'forwardGroupConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionForwardGroupConfig, Map<String, dynamic>>(forwardGroupConfigs, (value) => value.toMap()),
      'insertHeaderConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionInsertHeaderConfig, Map<String, dynamic>>(insertHeaderConfigs, (value) => value.toMap()),
      'order': order,
      'redirectConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionRedirectConfig, Map<String, dynamic>>(redirectConfigs, (value) => value.toMap()),
      'rewriteConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionRewriteConfig, Map<String, dynamic>>(rewriteConfigs, (value) => value.toMap()),
      'trafficLimitConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficLimitConfig, Map<String, dynamic>>(trafficLimitConfigs, (value) => value.toMap()),
      'trafficMirrorConfigs': pulumi.Input.encodeList<GetRulesRuleRuleActionTrafficMirrorConfig, Map<String, dynamic>>(trafficMirrorConfigs, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetRulesRuleRuleAction.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleAction(
      fixedResponseConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionFixedResponseConfig>(map['fixedResponseConfigs'], (value) => GetRulesRuleRuleActionFixedResponseConfig.fromMap((value as Map).cast<String, dynamic>())),
      forwardGroupConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionForwardGroupConfig>(map['forwardGroupConfigs'], (value) => GetRulesRuleRuleActionForwardGroupConfig.fromMap((value as Map).cast<String, dynamic>())),
      insertHeaderConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionInsertHeaderConfig>(map['insertHeaderConfigs'], (value) => GetRulesRuleRuleActionInsertHeaderConfig.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirectConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionRedirectConfig>(map['redirectConfigs'], (value) => GetRulesRuleRuleActionRedirectConfig.fromMap((value as Map).cast<String, dynamic>())),
      rewriteConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionRewriteConfig>(map['rewriteConfigs'], (value) => GetRulesRuleRuleActionRewriteConfig.fromMap((value as Map).cast<String, dynamic>())),
      trafficLimitConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficLimitConfig>(map['trafficLimitConfigs'], (value) => GetRulesRuleRuleActionTrafficLimitConfig.fromMap((value as Map).cast<String, dynamic>())),
      trafficMirrorConfigs: pulumi.Input.decodeList<GetRulesRuleRuleActionTrafficMirrorConfig>(map['trafficMirrorConfigs'], (value) => GetRulesRuleRuleActionTrafficMirrorConfig.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

