// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_routing_rules_routing_rule_condition.dart';
import 'bucket_website_routing_rules_routing_rule_lua_config.dart';
import 'bucket_website_routing_rules_routing_rule_redirect.dart';

class BucketWebsiteRoutingRulesRoutingRule {
  /// Save the criteria that the rule needs to match. See `condition` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleCondition>? condition;

  /// The Lua script configuration to be executed. See `lua_config` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleLuaConfig>? luaConfig;

  /// Specifies the action to perform after this rule is matched. See `redirect` below.
  final pulumi.Input<BucketWebsiteRoutingRulesRoutingRuleRedirect>? redirect;

  /// The sequence number of the matching and executing jump rules. OSS matches rules according to this sequence number. If the match is successful, the rule is executed and subsequent rules are not executed.
  final pulumi.Input<int>? ruleNumber;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRule].
  /// [condition] Save the criteria that the rule needs to match. See `condition` below.
  /// [luaConfig] The Lua script configuration to be executed. See `lua_config` below.
  /// [redirect] Specifies the action to perform after this rule is matched. See `redirect` below.
  /// [ruleNumber] The sequence number of the matching and executing jump rules. OSS matches rules according to this sequence number. If the match is successful, the rule is executed and subsequent rules are not executed.
  BucketWebsiteRoutingRulesRoutingRule({
    this.condition,
    this.luaConfig,
    this.redirect,
    this.ruleNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteRoutingRulesRoutingRuleCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'luaConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteRoutingRulesRoutingRuleLuaConfig,
            Map<String, dynamic>
          >(luaConfig, (value) => value.toMap()),
      'redirect':
          ?pulumi.Input.mapOptionalInputValue<
            BucketWebsiteRoutingRulesRoutingRuleRedirect,
            Map<String, dynamic>
          >(redirect, (value) => value.toMap()),
      'ruleNumber': ?ruleNumber,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteRoutingRulesRoutingRule(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteRoutingRulesRoutingRuleCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      luaConfig: (() {
        final guardedValue = map['luaConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteRoutingRulesRoutingRuleLuaConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      redirect: (() {
        final guardedValue = map['redirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketWebsiteRoutingRulesRoutingRuleRedirect.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ruleNumber: (() {
        final guardedValue = map['ruleNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
