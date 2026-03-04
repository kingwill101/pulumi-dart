// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_rules_waf_rule_condition.dart';
import 'get_waf_rules_waf_rule_rate_limit.dart';

class GetWafRulesWafRule {
  /// Specifies the action of the rule.
  final pulumi.Input<String> action;

  /// Whether to turn on Frequency Control, on/off
  final pulumi.Input<String> ccStatus;

  /// The blocked regions in the Chinese mainland, separated by commas (,).
  final pulumi.Input<String> cnRegionList;

  /// The trigger condition of the rule.
  final pulumi.Input<List<GetWafRulesWafRuleCondition>> conditions;

  /// The type of protection policy. The following scenarios are supported:-waf_group:Web basic protection-custom_acl: Custom protection policy-whitelist: whitelist
  final pulumi.Input<String> defenseScene;

  /// The effective range of the frequency control blacklist.
  final pulumi.Input<String> effect;

  /// Revised the time. The date format is based on ISO8601 notation and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.
  final pulumi.Input<String> gmtModified;

  /// The ID of the Waf Rule.
  final pulumi.Input<String> id;

  /// The effective range of the frequency control blacklist.
  final pulumi.Input<String> otherRegionList;

  /// The protection policy ID.
  final pulumi.Input<String> policyId;

  /// The rules of rate limiting.
  final pulumi.Input<List<GetWafRulesWafRuleRateLimit>> rateLimits;

  /// The regular expression.
  final pulumi.Input<List<String>> regularRules;

  /// The type of the regular expression. If the value of the tags field contains waf_group, you can specify this field.
  final pulumi.Input<List<String>> regularTypes;

  /// Filter by IP address.
  final pulumi.Input<List<String>> remoteAddrs;

  /// The name of the protection rule.
  final pulumi.Input<String> ruleName;

  /// List of protection scenarios
  final pulumi.Input<List<String>> scenes;

  /// The information about the HTTP status code.
  final pulumi.Input<String> status;

  /// The id of the waf rule group.
  final pulumi.Input<String> wafGroupIds;

  /// The first ID of the resource
  final pulumi.Input<String> wafRuleId;

  /// Creates a new [GetWafRulesWafRule].
  /// [action] Specifies the action of the rule.
  /// [ccStatus] Whether to turn on Frequency Control, on/off
  /// [cnRegionList] The blocked regions in the Chinese mainland, separated by commas (,).
  /// [conditions] The trigger condition of the rule.
  /// [defenseScene] The type of protection policy. The following scenarios are supported:-waf_group:Web basic protection-custom_acl: Custom protection policy-whitelist: whitelist
  /// [effect] The effective range of the frequency control blacklist.
  /// [gmtModified] Revised the time. The date format is based on ISO8601 notation and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.
  /// [id] The ID of the Waf Rule.
  /// [otherRegionList] The effective range of the frequency control blacklist.
  /// [policyId] The protection policy ID.
  /// [rateLimits] The rules of rate limiting.
  /// [regularRules] The regular expression.
  /// [regularTypes] The type of the regular expression. If the value of the tags field contains waf_group, you can specify this field.
  /// [remoteAddrs] Filter by IP address.
  /// [ruleName] The name of the protection rule.
  /// [scenes] List of protection scenarios
  /// [status] The information about the HTTP status code.
  /// [wafGroupIds] The id of the waf rule group.
  /// [wafRuleId] The first ID of the resource
  GetWafRulesWafRule({
    required this.action,
    required this.ccStatus,
    required this.cnRegionList,
    required this.conditions,
    required this.defenseScene,
    required this.effect,
    required this.gmtModified,
    required this.id,
    required this.otherRegionList,
    required this.policyId,
    required this.rateLimits,
    required this.regularRules,
    required this.regularTypes,
    required this.remoteAddrs,
    required this.ruleName,
    required this.scenes,
    required this.status,
    required this.wafGroupIds,
    required this.wafRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ccStatus': ccStatus,
      'cnRegionList': cnRegionList,
      'conditions':
          pulumi.Input.mapInputValue<
            List<GetWafRulesWafRuleCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  GetWafRulesWafRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defenseScene': defenseScene,
      'effect': effect,
      'gmtModified': gmtModified,
      'id': id,
      'otherRegionList': otherRegionList,
      'policyId': policyId,
      'rateLimits':
          pulumi.Input.mapInputValue<
            List<GetWafRulesWafRuleRateLimit>,
            List<Map<String, dynamic>>
          >(
            rateLimits,
            (value) =>
                pulumi.Input.encodeList<
                  GetWafRulesWafRuleRateLimit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regularRules': regularRules,
      'regularTypes': regularTypes,
      'remoteAddrs': remoteAddrs,
      'ruleName': ruleName,
      'scenes': scenes,
      'status': status,
      'wafGroupIds': wafGroupIds,
      'wafRuleId': wafRuleId,
    };
  }

  factory GetWafRulesWafRule.fromMap(Map<String, dynamic> map) {
    return GetWafRulesWafRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      ccStatus: pulumi.Input.fromValue(map['ccStatus'] as String),
      cnRegionList: pulumi.Input.fromValue(map['cnRegionList'] as String),
      conditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWafRulesWafRuleCondition>(
          map['conditions']!,
          (value) => GetWafRulesWafRuleCondition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      defenseScene: pulumi.Input.fromValue(map['defenseScene'] as String),
      effect: pulumi.Input.fromValue(map['effect'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      otherRegionList: pulumi.Input.fromValue(map['otherRegionList'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      rateLimits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWafRulesWafRuleRateLimit>(
          map['rateLimits']!,
          (value) => GetWafRulesWafRuleRateLimit.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      regularRules: pulumi.Input.fromValue(
        (map['regularRules'] as List).cast<String>(),
      ),
      regularTypes: pulumi.Input.fromValue(
        (map['regularTypes'] as List).cast<String>(),
      ),
      remoteAddrs: pulumi.Input.fromValue(
        (map['remoteAddrs'] as List).cast<String>(),
      ),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scenes: pulumi.Input.fromValue((map['scenes'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      wafGroupIds: pulumi.Input.fromValue(map['wafGroupIds'] as String),
      wafRuleId: pulumi.Input.fromValue(map['wafRuleId'] as String),
    );
  }
}
