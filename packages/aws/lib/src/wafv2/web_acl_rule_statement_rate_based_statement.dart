// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key.dart';
import 'web_acl_rule_statement_rate_based_statement_forwarded_ip_config.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatement {
  /// Setting that indicates how to aggregate the request counts. Valid values include: `CONSTANT`, `CUSTOM_KEYS`, `FORWARDED_IP`, or `IP`. Default: `IP`.
  final String? aggregateKeyType;

  /// Aggregate the request counts using one or more web request components as the aggregate keys. See `custom_key` below for details.
  final List<WebAclRuleStatementRateBasedStatementCustomKey>? customKeys;

  /// The amount of time, in seconds, that AWS WAF should include in its request counts, looking back from the current time. Valid values are `60`, `120`, `300`, and `600`. Defaults to `300` (5 minutes).
  ///
  /// **NOTE:** This setting doesn't determine how often AWS WAF checks the rate, but how far back it looks each time it checks. AWS WAF checks the rate about every 10 seconds.
  final int? evaluationWindowSec;

  /// Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If `aggregate_key_type` is set to `FORWARDED_IP`, this block is required. See `forwarded_ip_config` below for details.
  final WebAclRuleStatementRateBasedStatementForwardedIpConfig?
  forwardedIpConfig;

  /// Limit on requests during the specified evaluation window for a single aggregation instance.
  final int limit;

  /// Optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See `statement` above for details. If `aggregate_key_type` is set to `CONSTANT`, this block is required.
  final WebAclRuleStatementRateBasedStatementScopeDownStatement?
  scopeDownStatement;

  /// Creates a new [WebAclRuleStatementRateBasedStatement].
  /// [aggregateKeyType] Setting that indicates how to aggregate the request counts. Valid values include: `CONSTANT`, `CUSTOM_KEYS`, `FORWARDED_IP`, or `IP`. Default: `IP`.
  /// [customKeys] Aggregate the request counts using one or more web request components as the aggregate keys. See `custom_key` below for details.
  /// [evaluationWindowSec] The amount of time, in seconds, that AWS WAF should include in its request counts, looking back from the current time. Valid values are `60`, `120`, `300`, and `600`. Defaults to `300` (5 minutes).
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If `aggregate_key_type` is set to `FORWARDED_IP`, this block is required. See `forwarded_ip_config` below for details.
  /// [limit] Limit on requests during the specified evaluation window for a single aggregation instance.
  /// [scopeDownStatement] Optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See `statement` above for details. If `aggregate_key_type` is set to `CONSTANT`, this block is required.
  WebAclRuleStatementRateBasedStatement({
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
      'customKeys': ?customKeys == null
          ? null
          : pulumi.Input.encodeList<
              WebAclRuleStatementRateBasedStatementCustomKey,
              Map<String, dynamic>
            >(customKeys!, (value) => value.toMap()),
      'evaluationWindowSec': ?evaluationWindowSec,
      'forwardedIpConfig': ?forwardedIpConfig == null
          ? null
          : forwardedIpConfig!.toMap(),
      'limit': limit,
      'scopeDownStatement': ?scopeDownStatement == null
          ? null
          : scopeDownStatement!.toMap(),
    };
  }

  factory WebAclRuleStatementRateBasedStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRateBasedStatement(
      aggregateKeyType: map['aggregateKeyType'] == null
          ? null
          : map['aggregateKeyType'] as String,
      customKeys: map['customKeys'] == null
          ? null
          : pulumi.Input.decodeList<
              WebAclRuleStatementRateBasedStatementCustomKey
            >(
              map['customKeys'],
              (value) => WebAclRuleStatementRateBasedStatementCustomKey.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      evaluationWindowSec: map['evaluationWindowSec'] == null
          ? null
          : map['evaluationWindowSec'] as int,
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>(),
            ),
      limit: map['limit'] as int,
      scopeDownStatement: map['scopeDownStatement'] == null
          ? null
          : WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap(
              (map['scopeDownStatement'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
