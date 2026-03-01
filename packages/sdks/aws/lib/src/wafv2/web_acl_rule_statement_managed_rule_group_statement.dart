// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_managed_rule_group_config.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatement {
  /// Additional information that's used by a managed rule group. Only one rule attribute is allowed in each config. See `managed_rule_group_configs` for more details
  final List<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>? managedRuleGroupConfigs;
  /// Name of the managed rule group.
  final String name;
  /// Action settings to use in the place of the rule actions that are configured inside the rule group. You specify one override for each rule whose action you want to change. See `rule_action_override` below for details.
  final List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>? ruleActionOverrides;
  /// Narrows the scope of the statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement. See `statement` above for details.
  final WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement? scopeDownStatement;
  /// Name of the managed rule group vendor.
  final String vendorName;
  /// Version of the managed rule group. You can set `Version_1.0` or `Version_1.1` etc. If you want to use the default version, do not set anything.
  final String? version;

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
      'managedRuleGroupConfigs': ?managedRuleGroupConfigs == null ? null : pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig, Map<String, dynamic>>(managedRuleGroupConfigs!, (value) => value.toMap()),
      'name': name,
      'ruleActionOverrides': ?ruleActionOverrides == null ? null : pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride, Map<String, dynamic>>(ruleActionOverrides!, (value) => value.toMap()),
      'scopeDownStatement': ?scopeDownStatement == null ? null : scopeDownStatement!.toMap(),
      'vendorName': vendorName,
      'version': ?version,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatement(
      managedRuleGroupConfigs: map['managedRuleGroupConfigs'] == null ? null : pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig>(map['managedRuleGroupConfigs'], (value) => WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      ruleActionOverrides: map['ruleActionOverrides'] == null ? null : pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride>(map['ruleActionOverrides'], (value) => WebAclRuleStatementManagedRuleGroupStatementRuleActionOverride.fromMap((value as Map).cast<String, dynamic>())),
      scopeDownStatement: map['scopeDownStatement'] == null ? null : WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap((map['scopeDownStatement'] as Map).cast<String, dynamic>()),
      vendorName: map['vendorName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

