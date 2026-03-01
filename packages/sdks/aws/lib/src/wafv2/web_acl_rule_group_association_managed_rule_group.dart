// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override.dart';

class WebAclRuleGroupAssociationManagedRuleGroup {
  /// Name of the managed rule group.
  final String name;
  /// Override actions for specific rules within the rule group. See below.
  final List<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>? ruleActionOverrides;
  /// Name of the managed rule group vendor. For AWS managed rule groups, this is `AWS`.
  final String vendorName;
  /// Version of the managed rule group. If not specified, the default version is used.
  final String? version;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroup].
  /// [name] Name of the managed rule group.
  /// [ruleActionOverrides] Override actions for specific rules within the rule group. See below.
  /// [vendorName] Name of the managed rule group vendor. For AWS managed rule groups, this is `AWS`.
  /// [version] Version of the managed rule group. If not specified, the default version is used.
  WebAclRuleGroupAssociationManagedRuleGroup({
    required this.name,
    this.ruleActionOverrides,
    required this.vendorName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ruleActionOverrides': ?ruleActionOverrides == null ? null : pulumi.Input.encodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride, Map<String, dynamic>>(ruleActionOverrides!, (value) => value.toMap()),
      'vendorName': vendorName,
      'version': ?version,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroup.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroup(
      name: map['name'] as String,
      ruleActionOverrides: map['ruleActionOverrides'] == null ? null : pulumi.Input.decodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>(map['ruleActionOverrides'], (value) => WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride.fromMap((value as Map).cast<String, dynamic>())),
      vendorName: map['vendorName'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

