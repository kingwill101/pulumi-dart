// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_group_association_managed_rule_group/web_acl_rule_group_association_managed_rule_group.dart';
import '../web_acl_rule_group_association_rule_group_reference/web_acl_rule_group_association_rule_group_reference.dart';
import '../web_acl_rule_group_association_timeouts/web_acl_rule_group_association_timeouts.dart';

/// The set of arguments for WebAclRuleGroupAssociation.
class WebAclRuleGroupAssociationArgs {
  /// Managed Rule Group configuration. One of <span pulumi-lang-nodejs="`ruleGroupReference`" pulumi-lang-dotnet="`RuleGroupReference`" pulumi-lang-go="`ruleGroupReference`" pulumi-lang-python="`rule_group_reference`" pulumi-lang-yaml="`ruleGroupReference`" pulumi-lang-java="`ruleGroupReference`">`rule_group_reference`</span> or <span pulumi-lang-nodejs="`managedRuleGroup`" pulumi-lang-dotnet="`ManagedRuleGroup`" pulumi-lang-go="`managedRuleGroup`" pulumi-lang-python="`managed_rule_group`" pulumi-lang-yaml="`managedRuleGroup`" pulumi-lang-java="`managedRuleGroup`">`managed_rule_group`</span> is required. Conflicts with <span pulumi-lang-nodejs="`ruleGroupReference`" pulumi-lang-dotnet="`RuleGroupReference`" pulumi-lang-go="`ruleGroupReference`" pulumi-lang-python="`rule_group_reference`" pulumi-lang-yaml="`ruleGroupReference`" pulumi-lang-java="`ruleGroupReference`">`rule_group_reference`</span>. See below.
  final Input<WebAclRuleGroupAssociationManagedRuleGroup>? managedRuleGroup;

  /// Override action for the rule group. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span> and <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span>. Defaults to <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. When set to <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span>, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  final Input<String>? overrideAction;

  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  final Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Custom Rule Group reference configuration. One of <span pulumi-lang-nodejs="`ruleGroupReference`" pulumi-lang-dotnet="`RuleGroupReference`" pulumi-lang-go="`ruleGroupReference`" pulumi-lang-python="`rule_group_reference`" pulumi-lang-yaml="`ruleGroupReference`" pulumi-lang-java="`ruleGroupReference`">`rule_group_reference`</span> or <span pulumi-lang-nodejs="`managedRuleGroup`" pulumi-lang-dotnet="`ManagedRuleGroup`" pulumi-lang-go="`managedRuleGroup`" pulumi-lang-python="`managed_rule_group`" pulumi-lang-yaml="`managedRuleGroup`" pulumi-lang-java="`managedRuleGroup`">`managed_rule_group`</span> is required. Conflicts with <span pulumi-lang-nodejs="`managedRuleGroup`" pulumi-lang-dotnet="`ManagedRuleGroup`" pulumi-lang-go="`managedRuleGroup`" pulumi-lang-python="`managed_rule_group`" pulumi-lang-yaml="`managedRuleGroup`" pulumi-lang-java="`managedRuleGroup`">`managed_rule_group`</span>. See below.
  final Input<WebAclRuleGroupAssociationRuleGroupReference>? ruleGroupReference;

  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  final Input<String> ruleName;
  final Input<WebAclRuleGroupAssociationTimeouts>? timeouts;

  /// ARN of the Web ACL to associate the Rule Group with.
  ///
  /// The following arguments are optional:
  final Input<String> webAclArn;

  WebAclRuleGroupAssociationArgs({
    this.managedRuleGroup,
    this.overrideAction,
    required this.priority,
    this.region,
    this.ruleGroupReference,
    required this.ruleName,
    this.timeouts,
    required this.webAclArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedRuleGroupValue = managedRuleGroup;
    if (managedRuleGroupValue != null) {
      map['managedRuleGroup'] = Input.mapOptionalInputValue<
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
      map['ruleGroupReference'] = Input.mapOptionalInputValue<
              WebAclRuleGroupAssociationRuleGroupReference,
              Map<String, dynamic>>(
          ruleGroupReferenceValue, (value) => value.toMap());
    }
    map['ruleName'] = ruleName;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          WebAclRuleGroupAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['webAclArn'] = webAclArn;
    return map;
  }

  factory WebAclRuleGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationArgs(
      managedRuleGroup:
          Input.asOptionalInput<WebAclRuleGroupAssociationManagedRuleGroup>(
              map['managedRuleGroup']),
      overrideAction: Input.asOptionalInput<String>(map['overrideAction']),
      priority: Input.asInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleGroupReference:
          Input.asOptionalInput<WebAclRuleGroupAssociationRuleGroupReference>(
              map['ruleGroupReference']),
      ruleName: Input.asInput<String>(map['ruleName']),
      timeouts: Input.asOptionalInput<WebAclRuleGroupAssociationTimeouts>(
          map['timeouts']),
      webAclArn: Input.asInput<String>(map['webAclArn']),
    );
  }
}
