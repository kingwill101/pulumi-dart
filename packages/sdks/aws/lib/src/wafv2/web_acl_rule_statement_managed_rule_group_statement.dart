// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatement {
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>>? managedRuleGroupConfigs;
  /// Name of the managed rule group.
  final pulumi.Input<String> name;
  /// Override actions for specific rules within the managed rule group. See Rule Action Override below.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>>? ruleActionOverrides;
  /// Additional statement to narrow the scope of requests that the managed rule group evaluates. See Scope Down Statement below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>? scopeDownStatement;
  /// Name of the managed rule group vendor (e.g., "AWS").
  final pulumi.Input<String> vendorName;
  /// Version of the managed rule group.
  final pulumi.Input<String>? version;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatement].
  /// [managedRuleGroupConfigs] Optional.
  /// [name] Name of the managed rule group.
  /// [ruleActionOverrides] Override actions for specific rules within the managed rule group. See Rule Action Override below.
  /// [scopeDownStatement] Additional statement to narrow the scope of requests that the managed rule group evaluates. See Scope Down Statement below.
  /// [vendorName] Name of the managed rule group vendor (e.g., "AWS").
  /// [version] Version of the managed rule group.
  const WebAclRuleStatementManagedRuleGroupStatement({
    this.managedRuleGroupConfigs,
    required this.name,
    this.ruleActionOverrides,
    this.scopeDownStatement,
    required this.vendorName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRuleGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>, List<Map<String, dynamic>>>(managedRuleGroupConfigs, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'ruleActionOverrides': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>, List<Map<String, dynamic>>>(ruleActionOverrides, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeDownStatement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement, Map<String, dynamic>>(scopeDownStatement, (value) => value.toMap()),
      'vendorName': vendorName,
      'version': ?version,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatement(
      managedRuleGroupConfigs: (() { final guardedValue = map['managedRuleGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ruleActionOverrides: (() { final guardedValue = map['ruleActionOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopeDownStatement: (() { final guardedValue = map['scopeDownStatement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vendorName: pulumi.Input.fromValue(map['vendorName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
