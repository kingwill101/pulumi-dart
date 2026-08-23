// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_managed_rule_group_configs.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override.dart';

class WebAclRuleGroupAssociationManagedRuleGroup {
  /// Additional information that's used by a managed rule group. Only one rule attribute is allowed in each config. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs>? managedRuleGroupConfigs;
  /// Name of the managed rule group.
  final pulumi.Input<String> name;
  /// Override actions for specific rules within the rule group. See below.
  final pulumi.Input<List<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>>? ruleActionOverrides;
  /// Name of the managed rule group vendor. For AWS managed rule groups, this is `AWS`.
  final pulumi.Input<String> vendorName;
  /// Version of the managed rule group. If not specified, the default version is used.
  final pulumi.Input<String>? version;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroup].
  /// [managedRuleGroupConfigs] Additional information that's used by a managed rule group. Only one rule attribute is allowed in each config. See below.
  /// [name] Name of the managed rule group.
  /// [ruleActionOverrides] Override actions for specific rules within the rule group. See below.
  /// [vendorName] Name of the managed rule group vendor. For AWS managed rule groups, this is `AWS`.
  /// [version] Version of the managed rule group. If not specified, the default version is used.
  const WebAclRuleGroupAssociationManagedRuleGroup({
    this.managedRuleGroupConfigs,
    required this.name,
    this.ruleActionOverrides,
    required this.vendorName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRuleGroupConfigs': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs, Map<String, dynamic>>(managedRuleGroupConfigs, (value) => value.toMap()),
      'name': name,
      'ruleActionOverrides': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>, List<Map<String, dynamic>>>(ruleActionOverrides, (value) => pulumi.Input.encodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vendorName': vendorName,
      'version': ?version,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroup.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroup(
      managedRuleGroupConfigs: (() { final guardedValue = map['managedRuleGroupConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ruleActionOverrides: (() { final guardedValue = map['ruleActionOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride>(guardedValue, (value) => WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vendorName: pulumi.Input.fromValue(map['vendorName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
