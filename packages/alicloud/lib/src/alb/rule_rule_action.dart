// ignore_for_file: unused_element, unnecessary_cast

import 'rule_rule_action_cors_config.dart';
import 'rule_rule_action_fixed_response_config.dart';
import 'rule_rule_action_forward_group_config.dart';
import 'rule_rule_action_insert_header_config.dart';
import 'rule_rule_action_redirect_config.dart';
import 'rule_rule_action_remove_header_config.dart';
import 'rule_rule_action_rewrite_config.dart';
import 'rule_rule_action_traffic_limit_config.dart';
import 'rule_rule_action_traffic_mirror_config.dart';

class RuleRuleAction {
  /// Request forwarding based on CORS. See `cors_config` below.
  final RuleRuleActionCorsConfig? corsConfig;
  /// The configuration of the fixed response. See `fixed_response_config` below.
  final RuleRuleActionFixedResponseConfig? fixedResponseConfig;
  /// The forward response action within ALB. See `forward_group_config` below.
  final RuleRuleActionForwardGroupConfig? forwardGroupConfig;
  /// The configuration of the inserted header field. See `insert_header_config` below.
  final RuleRuleActionInsertHeaderConfig? insertHeaderConfig;
  /// The order of the forwarding rule actions. Valid values: `1` to `50000`. The actions are performed in ascending order. You cannot leave this parameter empty. Each value must be unique.
  final int order;
  /// The configuration of the external redirect action. See `redirect_config` below.
  final RuleRuleActionRedirectConfig? redirectConfig;
  /// The configuration of the inserted header field. See `remove_header_config` below.
  final RuleRuleActionRemoveHeaderConfig? removeHeaderConfig;
  /// The redirect action within ALB. See `rewrite_config` below.
  final RuleRuleActionRewriteConfig? rewriteConfig;
  /// The Flow speed limit. See `traffic_limit_config` below.
  final RuleRuleActionTrafficLimitConfig? trafficLimitConfig;
  /// The Traffic mirroring. See `traffic_mirror_config` below.
  final RuleRuleActionTrafficMirrorConfig? trafficMirrorConfig;
  /// The action type. Valid values: `ForwardGroup`, `Redirect`, `FixedResponse`, `Rewrite`, `InsertHeader`, `RemoveHeader`, `TrafficLimit`, `TrafficMirror` and `Cors`.
  /// **Note:** The preceding actions can be classified into two types:  `FinalType`: A forwarding rule can contain only one `FinalType` action, which is executed last. This type of action can contain only one `ForwardGroup`, `Redirect` or `FixedResponse` action. `ExtType`: A forwarding rule can contain one or more `ExtType` actions, which are executed before `FinalType` actions and need to coexist with the `FinalType` actions. This type of action can contain multiple `InsertHeader` actions or one `Rewrite` action.
  /// **NOTE:** The `TrafficLimit` and `TrafficMirror` option is available since 1.162.0.
  /// **NOTE:** From version 1.205.0, `type` can be set to `Cors`.
  final String type;

  /// Creates a new [RuleRuleAction].
  /// [corsConfig] Request forwarding based on CORS. See `cors_config` below.
  /// [fixedResponseConfig] The configuration of the fixed response. See `fixed_response_config` below.
  /// [forwardGroupConfig] The forward response action within ALB. See `forward_group_config` below.
  /// [insertHeaderConfig] The configuration of the inserted header field. See `insert_header_config` below.
  /// [order] The order of the forwarding rule actions. Valid values: `1` to `50000`. The actions are performed in ascending order. You cannot leave this parameter empty. Each value must be unique.
  /// [redirectConfig] The configuration of the external redirect action. See `redirect_config` below.
  /// [removeHeaderConfig] The configuration of the inserted header field. See `remove_header_config` below.
  /// [rewriteConfig] The redirect action within ALB. See `rewrite_config` below.
  /// [trafficLimitConfig] The Flow speed limit. See `traffic_limit_config` below.
  /// [trafficMirrorConfig] The Traffic mirroring. See `traffic_mirror_config` below.
  /// [type] The action type. Valid values: `ForwardGroup`, `Redirect`, `FixedResponse`, `Rewrite`, `InsertHeader`, `RemoveHeader`, `TrafficLimit`, `TrafficMirror` and `Cors`.
  RuleRuleAction({
    this.corsConfig,
    this.fixedResponseConfig,
    this.forwardGroupConfig,
    this.insertHeaderConfig,
    required this.order,
    this.redirectConfig,
    this.removeHeaderConfig,
    this.rewriteConfig,
    this.trafficLimitConfig,
    this.trafficMirrorConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsConfig': ?corsConfig == null ? null : corsConfig!.toMap(),
      'fixedResponseConfig': ?fixedResponseConfig == null ? null : fixedResponseConfig!.toMap(),
      'forwardGroupConfig': ?forwardGroupConfig == null ? null : forwardGroupConfig!.toMap(),
      'insertHeaderConfig': ?insertHeaderConfig == null ? null : insertHeaderConfig!.toMap(),
      'order': order,
      'redirectConfig': ?redirectConfig == null ? null : redirectConfig!.toMap(),
      'removeHeaderConfig': ?removeHeaderConfig == null ? null : removeHeaderConfig!.toMap(),
      'rewriteConfig': ?rewriteConfig == null ? null : rewriteConfig!.toMap(),
      'trafficLimitConfig': ?trafficLimitConfig == null ? null : trafficLimitConfig!.toMap(),
      'trafficMirrorConfig': ?trafficMirrorConfig == null ? null : trafficMirrorConfig!.toMap(),
      'type': type,
    };
  }

  factory RuleRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleRuleAction(
      corsConfig: map['corsConfig'] == null ? null : RuleRuleActionCorsConfig.fromMap((map['corsConfig'] as Map).cast<String, dynamic>()),
      fixedResponseConfig: map['fixedResponseConfig'] == null ? null : RuleRuleActionFixedResponseConfig.fromMap((map['fixedResponseConfig'] as Map).cast<String, dynamic>()),
      forwardGroupConfig: map['forwardGroupConfig'] == null ? null : RuleRuleActionForwardGroupConfig.fromMap((map['forwardGroupConfig'] as Map).cast<String, dynamic>()),
      insertHeaderConfig: map['insertHeaderConfig'] == null ? null : RuleRuleActionInsertHeaderConfig.fromMap((map['insertHeaderConfig'] as Map).cast<String, dynamic>()),
      order: map['order'] as int,
      redirectConfig: map['redirectConfig'] == null ? null : RuleRuleActionRedirectConfig.fromMap((map['redirectConfig'] as Map).cast<String, dynamic>()),
      removeHeaderConfig: map['removeHeaderConfig'] == null ? null : RuleRuleActionRemoveHeaderConfig.fromMap((map['removeHeaderConfig'] as Map).cast<String, dynamic>()),
      rewriteConfig: map['rewriteConfig'] == null ? null : RuleRuleActionRewriteConfig.fromMap((map['rewriteConfig'] as Map).cast<String, dynamic>()),
      trafficLimitConfig: map['trafficLimitConfig'] == null ? null : RuleRuleActionTrafficLimitConfig.fromMap((map['trafficLimitConfig'] as Map).cast<String, dynamic>()),
      trafficMirrorConfig: map['trafficMirrorConfig'] == null ? null : RuleRuleActionTrafficMirrorConfig.fromMap((map['trafficMirrorConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

