// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<RuleRuleActionCorsConfig>? corsConfig;

  /// The configuration of the fixed response. See `fixed_response_config` below.
  final pulumi.Input<RuleRuleActionFixedResponseConfig>? fixedResponseConfig;

  /// The forward response action within ALB. See `forward_group_config` below.
  final pulumi.Input<RuleRuleActionForwardGroupConfig>? forwardGroupConfig;

  /// The configuration of the inserted header field. See `insert_header_config` below.
  final pulumi.Input<RuleRuleActionInsertHeaderConfig>? insertHeaderConfig;

  /// The order of the forwarding rule actions. Valid values: `1` to `50000`. The actions are performed in ascending order. You cannot leave this parameter empty. Each value must be unique.
  final pulumi.Input<int> order;

  /// The configuration of the external redirect action. See `redirect_config` below.
  final pulumi.Input<RuleRuleActionRedirectConfig>? redirectConfig;

  /// The configuration of the inserted header field. See `remove_header_config` below.
  final pulumi.Input<RuleRuleActionRemoveHeaderConfig>? removeHeaderConfig;

  /// The redirect action within ALB. See `rewrite_config` below.
  final pulumi.Input<RuleRuleActionRewriteConfig>? rewriteConfig;

  /// The Flow speed limit. See `traffic_limit_config` below.
  final pulumi.Input<RuleRuleActionTrafficLimitConfig>? trafficLimitConfig;

  /// The Traffic mirroring. See `traffic_mirror_config` below.
  final pulumi.Input<RuleRuleActionTrafficMirrorConfig>? trafficMirrorConfig;

  /// The action type. Valid values: `ForwardGroup`, `Redirect`, `FixedResponse`, `Rewrite`, `InsertHeader`, `RemoveHeader`, `TrafficLimit`, `TrafficMirror` and `Cors`.
  /// **Note:** The preceding actions can be classified into two types:  `FinalType`: A forwarding rule can contain only one `FinalType` action, which is executed last. This type of action can contain only one `ForwardGroup`, `Redirect` or `FixedResponse` action. `ExtType`: A forwarding rule can contain one or more `ExtType` actions, which are executed before `FinalType` actions and need to coexist with the `FinalType` actions. This type of action can contain multiple `InsertHeader` actions or one `Rewrite` action.
  /// **NOTE:** The `TrafficLimit` and `TrafficMirror` option is available since 1.162.0.
  /// **NOTE:** From version 1.205.0, `type` can be set to `Cors`.
  final pulumi.Input<String> type;

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
      'corsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionCorsConfig,
            Map<String, dynamic>
          >(corsConfig, (value) => value.toMap()),
      'fixedResponseConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionFixedResponseConfig,
            Map<String, dynamic>
          >(fixedResponseConfig, (value) => value.toMap()),
      'forwardGroupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionForwardGroupConfig,
            Map<String, dynamic>
          >(forwardGroupConfig, (value) => value.toMap()),
      'insertHeaderConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionInsertHeaderConfig,
            Map<String, dynamic>
          >(insertHeaderConfig, (value) => value.toMap()),
      'order': order,
      'redirectConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionRedirectConfig,
            Map<String, dynamic>
          >(redirectConfig, (value) => value.toMap()),
      'removeHeaderConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionRemoveHeaderConfig,
            Map<String, dynamic>
          >(removeHeaderConfig, (value) => value.toMap()),
      'rewriteConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionRewriteConfig,
            Map<String, dynamic>
          >(rewriteConfig, (value) => value.toMap()),
      'trafficLimitConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionTrafficLimitConfig,
            Map<String, dynamic>
          >(trafficLimitConfig, (value) => value.toMap()),
      'trafficMirrorConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RuleRuleActionTrafficMirrorConfig,
            Map<String, dynamic>
          >(trafficMirrorConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RuleRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleRuleAction(
      corsConfig: (() {
        final guardedValue = map['corsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionCorsConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fixedResponseConfig: (() {
        final guardedValue = map['fixedResponseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionFixedResponseConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forwardGroupConfig: (() {
        final guardedValue = map['forwardGroupConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionForwardGroupConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      insertHeaderConfig: (() {
        final guardedValue = map['insertHeaderConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionInsertHeaderConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      order: pulumi.Input.fromValue(map['order'] as int),
      redirectConfig: (() {
        final guardedValue = map['redirectConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionRedirectConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      removeHeaderConfig: (() {
        final guardedValue = map['removeHeaderConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionRemoveHeaderConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rewriteConfig: (() {
        final guardedValue = map['rewriteConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionRewriteConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trafficLimitConfig: (() {
        final guardedValue = map['trafficLimitConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionTrafficLimitConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trafficMirrorConfig: (() {
        final guardedValue = map['trafficMirrorConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleRuleActionTrafficMirrorConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
