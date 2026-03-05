// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_condition.dart';
import 'waf_rule_rate_limit.dart';

/// {@template pulumi_dcdn_waf_rule_waf_rule_args_doc}
/// The set of arguments for WafRule.
/// {@endtemplate}
/// {@macro pulumi_dcdn_waf_rule_waf_rule_args_doc}
class WafRuleArgs {
  /// Specifies the action of the rule. Valid values: `block`, `monitor`, `js`, `deny`.
  final pulumi.Input<String>? action;
  /// Specifies whether to enable rate limiting. Valid values: `on` and `off`. **NOTE:** This parameter is required when policy is of type `custom_acl`.
  final pulumi.Input<String>? ccStatus;
  /// The blocked regions in the Chinese mainland, separated by commas (,).
  final pulumi.Input<String>? cnRegionList;
  /// Conditions that trigger the rule. See `conditions` below. **NOTE:** This parameter is required when policy is of type `custom_acl` or `whitelist`.
  final pulumi.Input<List<WafRuleCondition>>? conditions;
  /// The effective scope of the rate limiting blacklist. If you set ccStatus to on, you must configure this parameter. Valid values: `rule` (takes effect for the current rule) and `service` (takes effect globally).
  final pulumi.Input<String>? effect;
  /// Blocked regions outside the Chinese mainland, separated by commas (,).
  final pulumi.Input<String>? otherRegionList;
  /// The protection policy ID.
  final pulumi.Input<String> policyId;
  /// The rules of rate limiting. If you set `cc_status` to on, you must configure this parameter. See `rate_limit` below.
  final pulumi.Input<WafRuleRateLimit>? rateLimit;
  /// The regular expression.e, when waf_group appears in tags, this value can be filled in, and only one list of six digits in string format can appear with regultypes.
  final pulumi.Input<List<String>>? regularRules;
  /// Regular rule type, when waf_group appears in tags, this value can be filled in, optional values:["sqli", "xss", "code_exec", "crlf", "lfileii", "rfileii", "webshell", "vvip", "other"]
  final pulumi.Input<List<String>>? regularTypes;
  /// Filter by IP address.
  final pulumi.Input<List<String>>? remoteAddrs;
  /// The name of the protection rule. The name can be up to 64 characters in length and can contain letters, digits, and underscores (_). **NOTE:** This parameter cannot be modified when policy is of type `region_block`.
  final pulumi.Input<String> ruleName;
  /// The types of the protection policies.
  final pulumi.Input<List<String>>? scenes;
  /// The status of the waf rule. Valid values: `on` and `off`. Default value: on.
  final pulumi.Input<String>? status;
  /// The id of the waf rule group. The default value is "1012". Multiple rules are separated by commas. **NOTE:** This parameter is valid only when policy is of type `waf_group`.
  final pulumi.Input<String>? wafGroupIds;

  /// Creates a new [WafRuleArgs].
  /// [action] Specifies the action of the rule. Valid values: `block`, `monitor`, `js`, `deny`.
  /// [ccStatus] Specifies whether to enable rate limiting. Valid values: `on` and `off`. **NOTE:** This parameter is required when policy is of type `custom_acl`.
  /// [cnRegionList] The blocked regions in the Chinese mainland, separated by commas (,).
  /// [conditions] Conditions that trigger the rule. See `conditions` below. **NOTE:** This parameter is required when policy is of type `custom_acl` or `whitelist`.
  /// [effect] The effective scope of the rate limiting blacklist. If you set ccStatus to on, you must configure this parameter. Valid values: `rule` (takes effect for the current rule) and `service` (takes effect globally).
  /// [otherRegionList] Blocked regions outside the Chinese mainland, separated by commas (,).
  /// [policyId] The protection policy ID.
  /// [rateLimit] The rules of rate limiting. If you set `cc_status` to on, you must configure this parameter. See `rate_limit` below.
  /// [regularRules] The regular expression.e, when waf_group appears in tags, this value can be filled in, and only one list of six digits in string format can appear with regultypes.
  /// [regularTypes] Regular rule type, when waf_group appears in tags, this value can be filled in, optional values:["sqli", "xss", "code_exec", "crlf", "lfileii", "rfileii", "webshell", "vvip", "other"]
  /// [remoteAddrs] Filter by IP address.
  /// [ruleName] The name of the protection rule. The name can be up to 64 characters in length and can contain letters, digits, and underscores (_). **NOTE:** This parameter cannot be modified when policy is of type `region_block`.
  /// [scenes] The types of the protection policies.
  /// [status] The status of the waf rule. Valid values: `on` and `off`. Default value: on.
  /// [wafGroupIds] The id of the waf rule group. The default value is "1012". Multiple rules are separated by commas. **NOTE:** This parameter is valid only when policy is of type `waf_group`.
  WafRuleArgs({
    this.action,
    this.ccStatus,
    this.cnRegionList,
    this.conditions,
    this.effect,
    this.otherRegionList,
    required this.policyId,
    this.rateLimit,
    this.regularRules,
    this.regularTypes,
    this.remoteAddrs,
    required this.ruleName,
    this.scenes,
    this.status,
    this.wafGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ccStatus': ?ccStatus,
      'cnRegionList': ?cnRegionList,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<WafRuleCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<WafRuleCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effect': ?effect,
      'otherRegionList': ?otherRegionList,
      'policyId': policyId,
      'rateLimit': ?pulumi.Input.mapOptionalInputValue<WafRuleRateLimit, Map<String, dynamic>>(rateLimit, (value) => value.toMap()),
      'regularRules': ?regularRules,
      'regularTypes': ?regularTypes,
      'remoteAddrs': ?remoteAddrs,
      'ruleName': ruleName,
      'scenes': ?scenes,
      'status': ?status,
      'wafGroupIds': ?wafGroupIds,
    };
  }

  factory WafRuleArgs.fromMap(Map<String, dynamic> map) {
    return WafRuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ccStatus: (() { final guardedValue = map['ccStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cnRegionList: (() { final guardedValue = map['cnRegionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WafRuleCondition>(guardedValue, (value) => WafRuleCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otherRegionList: (() { final guardedValue = map['otherRegionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      rateLimit: (() { final guardedValue = map['rateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafRuleRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regularRules: (() { final guardedValue = map['regularRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regularTypes: (() { final guardedValue = map['regularTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remoteAddrs: (() { final guardedValue = map['remoteAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scenes: (() { final guardedValue = map['scenes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wafGroupIds: (() { final guardedValue = map['wafGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

