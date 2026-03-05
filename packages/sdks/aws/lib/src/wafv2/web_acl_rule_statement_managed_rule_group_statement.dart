// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatement {
  /// Additional information that's used by a managed rule group. Only one rule attribute is allowed in each config. See `managed_rule_group_configs` for more details
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>>? managedRuleGroupConfigs;
  /// Name of the managed rule group.
  final pulumi.Input<String> name;
  /// Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See `rule_action_override` below for details.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>>? ruleActionOverrides;
  /// Narrows the scope of the statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See `statement` above for details.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>? scopeDownStatement;
  /// Name of the managed rule group vendor.
  final pulumi.Input<String> vendorName;
  /// Version of the managed rule group. You can set `Version_1.0` or `Version_1.1` etc. If you want to use the default version, do not set anything.
  final pulumi.Input<String>? version;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatement].
  /// [managedRuleGroupConfigs] Additional information that's used by a managed rule group. Only one rule attribute is allowed in each config. See `managed_rule_group_configs` for more details
  /// [name] Name of the managed rule group.
  /// [ruleActionOverrides] Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See `rule_action_override` below for details.
  /// [scopeDownStatement] Narrows the scope of the statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See `statement` above for details.
  /// [vendorName] Name of the managed rule group vendor.
  /// [version] Version of the managed rule group. You can set `Version_1.0` or `Version_1.1` etc. If you want to use the default version, do not set anything.
  WebAclRuleStatementManagedRuleGroupStatement({
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

