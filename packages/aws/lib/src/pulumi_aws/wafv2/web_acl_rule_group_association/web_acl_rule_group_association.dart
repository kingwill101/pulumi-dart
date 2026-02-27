import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_managed_rule_group/web_acl_rule_group_association_managed_rule_group.dart';
import '../web_acl_rule_group_association_rule_group_reference/web_acl_rule_group_association_rule_group_reference.dart';
import '../web_acl_rule_group_association_timeouts/web_acl_rule_group_association_timeouts.dart';
import 'web_acl_rule_group_association_args.dart';

/// Associates a WAFv2 Rule Group (custom or managed) with a Web ACL by adding a rule that references the Rule Group. Use this resource to apply the rules defined in a Rule Group to a Web ACL without duplicating rule definitions.
///
/// This resource supports both:
///
/// - **Custom Rule Groups**: User-created rule groups that you manage within your AWS account
/// - **Managed Rule Groups**: Pre-configured rule groups provided by AWS or third-party vendors
///
/// !> **Warning:** Verify the rule names in your `rule_action_override`s carefully. With managed rule groups, WAF silently ignores any override that uses an invalid rule name. With customer-owned rule groups, invalid rule names in your overrides will cause web ACL updates to fail. An invalid rule name is any name that doesn't exactly match the case-sensitive name of an existing rule in the rule group.
///
/// !> **Warning:** Using this resource will cause the associated Web ACL resource to show configuration drift in the `rule` argument unless you add `lifecycle { ignore_changes = [rule] }` to the Web ACL resource configuration. This is because this resource modifies the Web ACL's rules outside of the Web ACL resource's direct management.
///
/// > **Note:** This resource creates a rule within the Web ACL that references the entire Rule Group. The rule group's individual rules are evaluated as a unit when requests are processed by the Web ACL.
/// ## Example Usage
///
/// ### Custom Rule Group - Basic Usage
///
///
/// ### Managed Rule Group - Basic Usage
///
///
/// ### Managed Rule Group - With Version
///
///
/// ### Managed Rule Group - With Rule Action Overrides
///
///
/// ### Custom Rule Group - With Override Action
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 web ACL custom rule group associations using `WebACLARN,RuleGroupARN,RuleName`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,arn:aws:wafv2:us-east-1:123456789012:regional/rulegroup/example-rule-group/87654321-4321-4321-4321-210987654321,example-rule-group-rule"
/// ```
///
/// Using `pulumi import`, import WAFv2 web ACL managed rule group associations using `WebACLARN,VendorName:RuleGroupName[:Version],RuleName`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation managed_example "arn:aws:wafv2:us-east-1:123456789012:regional/webacl/example-web-acl/12345678-1234-1234-1234-123456789012,AWS:AWSManagedRulesCommonRuleSet,aws-common-rule-set"
/// ```
class WebAclRuleGroupAssociation extends pulumi.CustomResource {
  /// Managed Rule Group configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `rule_group_reference`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationManagedRuleGroup?>
      managedRuleGroup;

  /// Override action for the rule group. Valid values are `none` and `count`. Defaults to `none`. When set to `count`, the actions defined in the rule group rules are overridden to count matches instead of blocking or allowing requests.
  late final pulumi.Output<String> overrideAction;

  /// Priority of the rule within the Web ACL. Rules are evaluated in order of priority, with lower numbers evaluated first.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Custom Rule Group reference configuration. One of `rule_group_reference` or `managed_rule_group` is required. Conflicts with `managed_rule_group`. See below.
  late final pulumi.Output<WebAclRuleGroupAssociationRuleGroupReference?>
      ruleGroupReference;

  /// Name of the rule to create in the Web ACL that references the rule group. Must be between 1 and 128 characters.
  late final pulumi.Output<String> ruleName;
  late final pulumi.Output<WebAclRuleGroupAssociationTimeouts?> timeouts;

  /// ARN of the Web ACL to associate the Rule Group with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> webAclArn;

  WebAclRuleGroupAssociation(
    String name, {
    WebAclRuleGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclRuleGroupAssociation:WebAclRuleGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.managedRuleGroup =
        registerOutput<WebAclRuleGroupAssociationManagedRuleGroup?>(
            'managedRuleGroup');
    this.overrideAction = registerOutput<String>('overrideAction');
    this.priority = registerOutput<int>('priority');
    this.region = registerOutput<String>('region');
    this.ruleGroupReference =
        registerOutput<WebAclRuleGroupAssociationRuleGroupReference?>(
            'ruleGroupReference');
    this.ruleName = registerOutput<String>('ruleName');
    this.timeouts =
        registerOutput<WebAclRuleGroupAssociationTimeouts?>('timeouts');
    this.webAclArn = registerOutput<String>('webAclArn');
  }
}
