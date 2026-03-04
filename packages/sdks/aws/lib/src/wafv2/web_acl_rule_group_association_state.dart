// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group.dart';
import 'web_acl_rule_group_association_rule_group_reference.dart';
import 'web_acl_rule_group_association_timeouts.dart';

/// Input properties used for looking up and filtering WebAclRuleGroupAssociation resources.
class WebAclRuleGroupAssociationState {
  /// Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroup>?
  managedRuleGroup;

  /// Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  final pulumi.Input<String>? overrideAction;

  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  final pulumi.Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReference>?
  ruleGroupReference;

  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  final pulumi.Input<String>? ruleName;
  final pulumi.Input<WebAclRuleGroupAssociationTimeouts>? timeouts;

  /// ARN of the Web ACL to associate the Rule Group with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? webAclArn;

  /// Creates a new [WebAclRuleGroupAssociationState].
  /// [managedRuleGroup] Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  /// [overrideAction] Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  /// [priority] Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleGroupReference] Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  /// [ruleName] Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  /// [timeouts] Optional.
  /// [webAclArn] ARN of the Web ACL to associate the Rule Group with.
  WebAclRuleGroupAssociationState({
    this.managedRuleGroup,
    this.overrideAction,
    this.priority,
    this.region,
    this.ruleGroupReference,
    this.ruleName,
    this.timeouts,
    this.webAclArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRuleGroup':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleGroupAssociationManagedRuleGroup,
            Map<String, dynamic>
          >(managedRuleGroup, (value) => value.toMap()),
      'overrideAction': ?overrideAction,
      'priority': ?priority,
      'region': ?region,
      'ruleGroupReference':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleGroupAssociationRuleGroupReference,
            Map<String, dynamic>
          >(ruleGroupReference, (value) => value.toMap()),
      'ruleName': ?ruleName,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleGroupAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'webAclArn': ?webAclArn,
    };
  }

  factory WebAclRuleGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationState(
      managedRuleGroup: (() {
        final guardedValue = map['managedRuleGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleGroupAssociationManagedRuleGroup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      overrideAction: (() {
        final guardedValue = map['overrideAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleGroupReference: (() {
        final guardedValue = map['ruleGroupReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleGroupAssociationRuleGroupReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleGroupAssociationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webAclArn: (() {
        final guardedValue = map['webAclArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
