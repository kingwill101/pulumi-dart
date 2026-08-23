// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key.dart';
import 'web_acl_rule_statement_rate_based_statement_forwarded_ip_config.dart';
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatement {
  /// Setting that indicates how to aggregate the request counts. Defaults to `IP`. Valid values: `IP`, `FORWARDED_IP`, `CUSTOM_KEYS`, `CONSTANT`.
  final pulumi.Input<String> aggregateKeyType;
  /// Aggregate the request counts using one or more web request components as the aggregate keys. See Custom Keys below.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKey>>? customKeys;
  /// Time window for which the rate limit applies, in seconds. Defaults to `300` (5 minutes). Valid values: `60`, `120`, `300`, `600`.
  final pulumi.Input<int>? evaluationWindowSec;
  /// Configuration for inspecting IP addresses in an HTTP header instead of using the web request origin. See Forwarded IP Config below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementForwardedIpConfig>? forwardedIpConfig;
  /// Rate limit threshold (requests per evaluation window period).
  final pulumi.Input<int> limit;
  /// Additional statement to narrow the scope of requests that the rate-based rule evaluates. See Scope Down Statement below.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatement>? scopeDownStatement;

  /// Creates a new [WebAclRuleStatementRateBasedStatement].
  /// [aggregateKeyType] Setting that indicates how to aggregate the request counts. Defaults to `IP`. Valid values: `IP`, `FORWARDED_IP`, `CUSTOM_KEYS`, `CONSTANT`.
  /// [customKeys] Aggregate the request counts using one or more web request components as the aggregate keys. See Custom Keys below.
  /// [evaluationWindowSec] Time window for which the rate limit applies, in seconds. Defaults to `300` (5 minutes). Valid values: `60`, `120`, `300`, `600`.
  /// [forwardedIpConfig] Configuration for inspecting IP addresses in an HTTP header instead of using the web request origin. See Forwarded IP Config below.
  /// [limit] Rate limit threshold (requests per evaluation window period).
  /// [scopeDownStatement] Additional statement to narrow the scope of requests that the rate-based rule evaluates. See Scope Down Statement below.
  const WebAclRuleStatementRateBasedStatement({
    required this.aggregateKeyType,
    this.customKeys,
    this.evaluationWindowSec,
    this.forwardedIpConfig,
    required this.limit,
    this.scopeDownStatement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateKeyType': aggregateKeyType,
      'customKeys': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementCustomKey>, List<Map<String, dynamic>>>(customKeys, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluationWindowSec': ?evaluationWindowSec,
      'forwardedIpConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementForwardedIpConfig, Map<String, dynamic>>(forwardedIpConfig, (value) => value.toMap()),
      'limit': limit,
      'scopeDownStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(scopeDownStatement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatement(
      aggregateKeyType: pulumi.Input.fromValue(map['aggregateKeyType'] as String),
      customKeys: (() { final guardedValue = map['customKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKey>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementCustomKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      evaluationWindowSec: (() { final guardedValue = map['evaluationWindowSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      forwardedIpConfig: (() { final guardedValue = map['forwardedIpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementForwardedIpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limit: pulumi.Input.fromValue(map['limit'] as int),
      scopeDownStatement: (() { final guardedValue = map['scopeDownStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
