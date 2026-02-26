// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement_rate_based_statement_custom_key/rule_group_rule_statement_rate_based_statement_custom_key.dart';
import '../rule_group_rule_statement_rate_based_statement_forwarded_ip_config/rule_group_rule_statement_rate_based_statement_forwarded_ip_config.dart';
import '../rule_group_rule_statement_rate_based_statement_scope_down_statement/rule_group_rule_statement_rate_based_statement_scope_down_statement.dart';

class RuleGroupRuleStatementRateBasedStatement {
  /// Setting that indicates how to aggregate the request counts. Valid values include: `CONSTANT`, `CUSTOM_KEYS`, `FORWARDED_IP` or `IP`. Default: `IP`.
  final String? aggregateKeyType;

  /// Aggregate the request counts using one or more web request components as the aggregate keys. See <span pulumi-lang-nodejs="`customKey`" pulumi-lang-dotnet="`CustomKey`" pulumi-lang-go="`customKey`" pulumi-lang-python="`custom_key`" pulumi-lang-yaml="`customKey`" pulumi-lang-java="`customKey`">`custom_key`</span> below for details.
  final List<RuleGroupRuleStatementRateBasedStatementCustomKey>? customKeys;

  /// The amount of time, in seconds, that AWS WAF should include in its request counts, looking back from the current time. Valid values are <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>, <span pulumi-lang-nodejs="`120`" pulumi-lang-dotnet="`120`" pulumi-lang-go="`120`" pulumi-lang-python="`120`" pulumi-lang-yaml="`120`" pulumi-lang-java="`120`">`120`</span>, <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span>, and <span pulumi-lang-nodejs="`600`" pulumi-lang-dotnet="`600`" pulumi-lang-go="`600`" pulumi-lang-python="`600`" pulumi-lang-yaml="`600`" pulumi-lang-java="`600`">`600`</span>. Defaults to <span pulumi-lang-nodejs="`300`" pulumi-lang-dotnet="`300`" pulumi-lang-go="`300`" pulumi-lang-python="`300`" pulumi-lang-yaml="`300`" pulumi-lang-java="`300`">`300`</span> (5 minutes).
  ///
  /// **NOTE:** This setting doesn't determine how often AWS WAF checks the rate, but how far back it looks each time it checks. AWS WAF checks the rate about every 10 seconds.
  final int? evaluationWindowSec;

  /// The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. If <span pulumi-lang-nodejs="`aggregateKeyType`" pulumi-lang-dotnet="`AggregateKeyType`" pulumi-lang-go="`aggregateKeyType`" pulumi-lang-python="`aggregate_key_type`" pulumi-lang-yaml="`aggregateKeyType`" pulumi-lang-java="`aggregateKeyType`">`aggregate_key_type`</span> is set to `FORWARDED_IP`, this block is required. See Forwarded IP Config below for details.
  final RuleGroupRuleStatementRateBasedStatementForwardedIpConfig?
      forwardedIpConfig;

  /// Limit on requests per 5-minute (or <span pulumi-lang-nodejs="`evaluationWindowSec`" pulumi-lang-dotnet="`EvaluationWindowSec`" pulumi-lang-go="`evaluationWindowSec`" pulumi-lang-python="`evaluation_window_sec`" pulumi-lang-yaml="`evaluationWindowSec`" pulumi-lang-java="`evaluationWindowSec`">`evaluation_window_sec`</span>) period for a single originating IP address (or for other aggregate key, depending on <span pulumi-lang-nodejs="`aggregateKeyType`" pulumi-lang-dotnet="`AggregateKeyType`" pulumi-lang-go="`aggregateKeyType`" pulumi-lang-python="`aggregate_key_type`" pulumi-lang-yaml="`aggregateKeyType`" pulumi-lang-java="`aggregateKeyType`">`aggregate_key_type`</span> and <span pulumi-lang-nodejs="`customKey`" pulumi-lang-dotnet="`CustomKey`" pulumi-lang-go="`customKey`" pulumi-lang-python="`custom_key`" pulumi-lang-yaml="`customKey`" pulumi-lang-java="`customKey`">`custom_key`</span>).
  final int limit;

  /// An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See Statement above for details. If <span pulumi-lang-nodejs="`aggregateKeyType`" pulumi-lang-dotnet="`AggregateKeyType`" pulumi-lang-go="`aggregateKeyType`" pulumi-lang-python="`aggregate_key_type`" pulumi-lang-yaml="`aggregateKeyType`" pulumi-lang-java="`aggregateKeyType`">`aggregate_key_type`</span> is set to `CONSTANT`, this block is required.
  final RuleGroupRuleStatementRateBasedStatementScopeDownStatement?
      scopeDownStatement;

  RuleGroupRuleStatementRateBasedStatement({
    this.aggregateKeyType,
    this.customKeys,
    this.evaluationWindowSec,
    this.forwardedIpConfig,
    required this.limit,
    this.scopeDownStatement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregateKeyTypeValue = aggregateKeyType;
    if (aggregateKeyTypeValue != null) {
      map['aggregateKeyType'] = aggregateKeyTypeValue;
    }
    final customKeysValue = customKeys;
    if (customKeysValue != null) {
      map['customKeys'] = Input.encodeList<
          RuleGroupRuleStatementRateBasedStatementCustomKey,
          Map<String, dynamic>>(customKeysValue, (value) => value.toMap());
    }
    final evaluationWindowSecValue = evaluationWindowSec;
    if (evaluationWindowSecValue != null) {
      map['evaluationWindowSec'] = evaluationWindowSecValue;
    }
    final forwardedIpConfigValue = forwardedIpConfig;
    if (forwardedIpConfigValue != null) {
      map['forwardedIpConfig'] = forwardedIpConfigValue.toMap();
    }
    map['limit'] = limit;
    final scopeDownStatementValue = scopeDownStatement;
    if (scopeDownStatementValue != null) {
      map['scopeDownStatement'] = scopeDownStatementValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatement(
      aggregateKeyType: map['aggregateKeyType'] == null
          ? null
          : map['aggregateKeyType'] as String,
      customKeys: map['customKeys'] == null
          ? null
          : Input.decodeList<RuleGroupRuleStatementRateBasedStatementCustomKey>(
              map['customKeys'],
              (value) =>
                  RuleGroupRuleStatementRateBasedStatementCustomKey.fromMap(
                      (value as Map).cast<String, dynamic>())),
      evaluationWindowSec: map['evaluationWindowSec'] == null
          ? null
          : map['evaluationWindowSec'] as int,
      forwardedIpConfig: map['forwardedIpConfig'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementForwardedIpConfig.fromMap(
              (map['forwardedIpConfig'] as Map).cast<String, dynamic>()),
      limit: map['limit'] as int,
      scopeDownStatement: map['scopeDownStatement'] == null
          ? null
          : RuleGroupRuleStatementRateBasedStatementScopeDownStatement.fromMap(
              (map['scopeDownStatement'] as Map).cast<String, dynamic>()),
    );
  }
}
