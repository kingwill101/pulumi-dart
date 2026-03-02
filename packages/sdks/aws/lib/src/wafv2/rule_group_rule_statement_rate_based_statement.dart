// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement_rate_based_statement_custom_key.dart';
import 'rule_group_rule_statement_rate_based_statement_forwarded_ip_config.dart';
import 'rule_group_rule_statement_rate_based_statement_scope_down_statement.dart';

class RuleGroupRuleStatementRateBasedStatement {
  /// Setting that indicates how to aggregate the request counts. Valid values include: `CONSTANT`, `CUSTOM_KEYS`, `FORWARDED_IP` or `IP`. Default: `IP`.
  final pulumi.Input<String>? aggregateKeyType;
  /// Aggregate the request counts using one or more web request components as the aggregate keys. See `custom_key` below for details.
  final pulumi.Input<List<RuleGroupRuleStatementRateBasedStatementCustomKey>>? customKeys;
  /// The amount of time, in seconds, that AWS WAF should include in its request counts, looking back from the current time. Valid values are `60`, `120`, `300`, and `600`. Defaults to `300` (5 minutes).
  ///
  /// **NOTE:** This setting doesn't determine how often AWS WAF checks the rate, but how far back it looks each time it checks. AWS WAF checks the rate about every 10 seconds.
  final pulumi.Input<int>? evaluationWindowSec;
  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If `aggregate_key_type` is set to `FORWARDED_IP`, this block is required. See Forwarded IP Config below for details.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementForwardedIpConfig>? forwardedIpConfig;
  /// Limit on requests per 5-minute (or `evaluation_window_sec`) period for a single originating IP address (or for other aggregate key, depending on `aggregate_key_type` and `custom_key`).
  final pulumi.Input<int> limit;
  /// An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details. If `aggregate_key_type` is set to `CONSTANT`, this block is required.
  final pulumi.Input<RuleGroupRuleStatementRateBasedStatementScopeDownStatement>? scopeDownStatement;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatement].
  /// [aggregateKeyType] Setting that indicates how to aggregate the request counts. Valid values include: `CONSTANT`, `CUSTOM_KEYS`, `FORWARDED_IP` or `IP`. Default: `IP`.
  /// [customKeys] Aggregate the request counts using one or more web request components as the aggregate keys. See `custom_key` below for details.
  /// [evaluationWindowSec] The amount of time, in seconds, that AWS WAF should include in its request counts, looking back from the current time. Valid values are `60`, `120`, `300`, and `600`. Defaults to `300` (5 minutes).
  /// [forwardedIpConfig] The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If `aggregate_key_type` is set to `FORWARDED_IP`, this block is required. See Forwarded IP Config below for details.
  /// [limit] Limit on requests per 5-minute (or `evaluation_window_sec`) period for a single originating IP address (or for other aggregate key, depending on `aggregate_key_type` and `custom_key`).
  /// [scopeDownStatement] An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details. If `aggregate_key_type` is set to `CONSTANT`, this block is required.
  RuleGroupRuleStatementRateBasedStatement({
    this.aggregateKeyType,
    this.customKeys,
    this.evaluationWindowSec,
    this.forwardedIpConfig,
    required this.limit,
    this.scopeDownStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateKeyType': ?aggregateKeyType,
      'customKeys': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleStatementRateBasedStatementCustomKey>, List<Map<String, dynamic>>>(customKeys, (value) => pulumi.Input.encodeList<RuleGroupRuleStatementRateBasedStatementCustomKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluationWindowSec': ?evaluationWindowSec,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
      'limit': limit,
      'scopeDownStatement': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(scopeDownStatement, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatement(
      aggregateKeyType: map['aggregateKeyType'] == null ? null : ((map['aggregateKeyType'] as String).input()).input(),
      customKeys: map['customKeys'] == null ? null : ((pulumi.Input.decodeList<RuleGroupRuleStatementRateBasedStatementCustomKey>(map['customKeys']!, (value) => RuleGroupRuleStatementRateBasedStatementCustomKey.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      evaluationWindowSec: map['evaluationWindowSec'] == null ? null : ((map['evaluationWindowSec'] as int).input()).input(),
      forwardedIpConfig: map['forwardedIpConfig'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementForwardedIpConfig.fromMap((map['forwardedIpConfig']! as Map).cast<String, dynamic>())).input()).input(),
      limit: (map['limit'] as int).input(),
      scopeDownStatement: map['scopeDownStatement'] == null ? null : ((RuleGroupRuleStatementRateBasedStatementScopeDownStatement.fromMap((map['scopeDownStatement']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

