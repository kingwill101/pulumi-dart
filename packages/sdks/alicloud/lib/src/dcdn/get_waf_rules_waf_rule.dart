// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_rules_waf_rule_condition.dart';
import 'get_waf_rules_waf_rule_rate_limit.dart';

class GetWafRulesWafRule {
  /// Specifies the action of the rule.
  final String action;
  /// Whether to turn on Frequency Control, on/off
  final String ccStatus;
  /// The blocked regions in the Chinese mainland, separated by commas (,).
  final String cnRegionList;
  /// The trigger condition of the rule.
  final List<GetWafRulesWafRuleCondition> conditions;
  /// The type of protection policy. The following scenarios are supported:-waf_group:Web basic protection-custom_acl: Custom protection policy-whitelist: whitelist
  final String defenseScene;
  /// The effective range of the frequency control blacklist.
  final String effect;
  /// Revised the time. The date format is based on ISO8601 notation and uses UTC +0 time in the format of yyyy-MM-ddTHH:mm:ssZ.
  final String gmtModified;
  /// The ID of the Waf Rule.
  final String id;
  /// The effective range of the frequency control blacklist.
  final String otherRegionList;
  /// The protection policy ID.
  final String policyId;
  /// The rules of rate limiting.
  final List<GetWafRulesWafRuleRateLimit> rateLimits;
  /// The regular expression.
  final List<String> regularRules;
  /// The type of the regular expression. If the value of the tags field contains waf_group, you can specify this field.
  final List<String> regularTypes;
  /// Filter by IP address.
  final List<String> remoteAddrs;
  /// The name of the protection rule.
  final String ruleName;
  /// List of protection scenarios
  final List<String> scenes;
  /// The information about the HTTP status code.
  final String status;
  /// The id of the waf rule group.
  final String wafGroupIds;
  /// The first ID of the resource
  final String wafRuleId;

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
      'conditions': pulumi.Input.encodeList<GetWafRulesWafRuleCondition, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'defenseScene': defenseScene,
      'effect': effect,
      'gmtModified': gmtModified,
      'id': id,
      'otherRegionList': otherRegionList,
      'policyId': policyId,
      'rateLimits': pulumi.Input.encodeList<GetWafRulesWafRuleRateLimit, Map<String, dynamic>>(rateLimits, (value) => value.toMap()),
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
      action: map['action'] as String,
      ccStatus: map['ccStatus'] as String,
      cnRegionList: map['cnRegionList'] as String,
      conditions: pulumi.Input.decodeList<GetWafRulesWafRuleCondition>(map['conditions'], (value) => GetWafRulesWafRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      defenseScene: map['defenseScene'] as String,
      effect: map['effect'] as String,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      otherRegionList: map['otherRegionList'] as String,
      policyId: map['policyId'] as String,
      rateLimits: pulumi.Input.decodeList<GetWafRulesWafRuleRateLimit>(map['rateLimits'], (value) => GetWafRulesWafRuleRateLimit.fromMap((value as Map).cast<String, dynamic>())),
      regularRules: (map['regularRules'] as List).cast<String>(),
      regularTypes: (map['regularTypes'] as List).cast<String>(),
      remoteAddrs: (map['remoteAddrs'] as List).cast<String>(),
      ruleName: map['ruleName'] as String,
      scenes: (map['scenes'] as List).cast<String>(),
      status: map['status'] as String,
      wafGroupIds: map['wafGroupIds'] as String,
      wafRuleId: map['wafRuleId'] as String,
    );
  }
}

