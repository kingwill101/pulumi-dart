// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group.dart';
import 'web_acl_rule_group_association_rule_group_reference.dart';
import 'web_acl_rule_group_association_timeouts.dart';

/// {@template pulumi_wafv2_web_acl_rule_group_association_web_acl_rule_group_association_args_doc}
/// The set of arguments for WebAclRuleGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_wafv2_web_acl_rule_group_association_web_acl_rule_group_association_args_doc}
class WebAclRuleGroupAssociationArgs {
  /// Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroup>?
      managedRuleGroup;

  /// Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  final pulumi.Input<String>? overrideAction;

  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  final pulumi.Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReference>?
      ruleGroupReference;

  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  final pulumi.Input<String> ruleName;
  final pulumi.Input<WebAclRuleGroupAssociationTimeouts>? timeouts;

  /// ARN of the Web ACL to associate the Rule Group with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> webAclArn;

  /// Creates a new [WebAclRuleGroupAssociationArgs].
  /// [managedRuleGroup] Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  /// [overrideAction] Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  /// [priority] Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleGroupReference] Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  /// [ruleName] Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  /// [timeouts] Optional.
  /// [webAclArn] ARN of the Web ACL to associate the Rule Group with.
  WebAclRuleGroupAssociationArgs({
    WebAclRuleGroupAssociationManagedRuleGroup? managedRuleGroup,
    String? overrideAction,
    required int priority,
    String? region,
    WebAclRuleGroupAssociationRuleGroupReference? ruleGroupReference,
    required String ruleName,
    WebAclRuleGroupAssociationTimeouts? timeouts,
    required String webAclArn,
  })  : managedRuleGroup = pulumi.Input.asOptionalInput<
            WebAclRuleGroupAssociationManagedRuleGroup>(managedRuleGroup),
        overrideAction = pulumi.Input.asOptionalInput<String>(overrideAction),
        priority = pulumi.Input.asInput<int>(priority),
        region = pulumi.Input.asOptionalInput<String>(region),
        ruleGroupReference = pulumi.Input.asOptionalInput<
            WebAclRuleGroupAssociationRuleGroupReference>(ruleGroupReference),
        ruleName = pulumi.Input.asInput<String>(ruleName),
        timeouts =
            pulumi.Input.asOptionalInput<WebAclRuleGroupAssociationTimeouts>(
                timeouts),
        webAclArn = pulumi.Input.asInput<String>(webAclArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedRuleGroupValue = managedRuleGroup;
    if (managedRuleGroupValue != null) {
      map['managedRuleGroup'] = pulumi.Input.mapOptionalInputValue<
              WebAclRuleGroupAssociationManagedRuleGroup, Map<String, dynamic>>(
          managedRuleGroupValue, (value) => value.toMap());
    }
    final overrideActionValue = overrideAction;
    if (overrideActionValue != null) {
      map['overrideAction'] = overrideActionValue;
    }
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final ruleGroupReferenceValue = ruleGroupReference;
    if (ruleGroupReferenceValue != null) {
      map['ruleGroupReference'] = pulumi.Input.mapOptionalInputValue<
              WebAclRuleGroupAssociationRuleGroupReference,
              Map<String, dynamic>>(
          ruleGroupReferenceValue, (value) => value.toMap());
    }
    map['ruleName'] = ruleName;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          WebAclRuleGroupAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['webAclArn'] = webAclArn;
    return map;
  }

  factory WebAclRuleGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationArgs(
      managedRuleGroup: map['managedRuleGroup'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroup.fromMap(
              (map['managedRuleGroup'] as Map).cast<String, dynamic>()),
      overrideAction: map['overrideAction'] == null
          ? null
          : map['overrideAction'] as String,
      priority: map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      ruleGroupReference: map['ruleGroupReference'] == null
          ? null
          : WebAclRuleGroupAssociationRuleGroupReference.fromMap(
              (map['ruleGroupReference'] as Map).cast<String, dynamic>()),
      ruleName: map['ruleName'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : WebAclRuleGroupAssociationTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      webAclArn: map['webAclArn'] as String,
    );
  }
}
