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
    pulumi.Output<String>? action,
    pulumi.Output<String>? ccStatus,
    pulumi.Output<String>? cnRegionList,
    pulumi.Output<List<WafRuleCondition>>? conditions,
    pulumi.Output<String>? effect,
    pulumi.Output<String>? otherRegionList,
    required pulumi.Output<String> policyId,
    pulumi.Output<WafRuleRateLimit>? rateLimit,
    pulumi.Output<List<String>>? regularRules,
    pulumi.Output<List<String>>? regularTypes,
    pulumi.Output<List<String>>? remoteAddrs,
    required pulumi.Output<String> ruleName,
    pulumi.Output<List<String>>? scenes,
    pulumi.Output<String>? status,
    pulumi.Output<String>? wafGroupIds,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      ccStatus = pulumi.Input.asOptionalInput<String>(ccStatus),
      cnRegionList = pulumi.Input.asOptionalInput<String>(cnRegionList),
      conditions = pulumi.Input.asOptionalInput<List<WafRuleCondition>>(conditions),
      effect = pulumi.Input.asOptionalInput<String>(effect),
      otherRegionList = pulumi.Input.asOptionalInput<String>(otherRegionList),
      policyId = pulumi.Input.asInput<String>(policyId),
      rateLimit = pulumi.Input.asOptionalInput<WafRuleRateLimit>(rateLimit),
      regularRules = pulumi.Input.asOptionalInput<List<String>>(regularRules),
      regularTypes = pulumi.Input.asOptionalInput<List<String>>(regularTypes),
      remoteAddrs = pulumi.Input.asOptionalInput<List<String>>(remoteAddrs),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      scenes = pulumi.Input.asOptionalInput<List<String>>(scenes),
      status = pulumi.Input.asOptionalInput<String>(status),
      wafGroupIds = pulumi.Input.asOptionalInput<String>(wafGroupIds);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      ccStatus: map['ccStatus'] == null ? null : pulumi.Output.create<String>(map['ccStatus'] as String),
      cnRegionList: map['cnRegionList'] == null ? null : pulumi.Output.create<String>(map['cnRegionList'] as String),
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<WafRuleCondition>>(pulumi.Input.decodeList<WafRuleCondition>(map['conditions'], (value) => WafRuleCondition.fromMap((value as Map).cast<String, dynamic>()))),
      effect: map['effect'] == null ? null : pulumi.Output.create<String>(map['effect'] as String),
      otherRegionList: map['otherRegionList'] == null ? null : pulumi.Output.create<String>(map['otherRegionList'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      rateLimit: map['rateLimit'] == null ? null : pulumi.Output.create<WafRuleRateLimit>(WafRuleRateLimit.fromMap((map['rateLimit'] as Map).cast<String, dynamic>())),
      regularRules: map['regularRules'] == null ? null : pulumi.Output.create<List<String>>((map['regularRules'] as List).cast<String>()),
      regularTypes: map['regularTypes'] == null ? null : pulumi.Output.create<List<String>>((map['regularTypes'] as List).cast<String>()),
      remoteAddrs: map['remoteAddrs'] == null ? null : pulumi.Output.create<List<String>>((map['remoteAddrs'] as List).cast<String>()),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      scenes: map['scenes'] == null ? null : pulumi.Output.create<List<String>>((map['scenes'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      wafGroupIds: map['wafGroupIds'] == null ? null : pulumi.Output.create<String>(map['wafGroupIds'] as String),
    );
  }
}

