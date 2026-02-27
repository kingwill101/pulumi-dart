import 'package:pulumi/pulumi.dart' as pulumi;
import '../automation_rule_action/automation_rule_action.dart';
import '../automation_rule_criteria/automation_rule_criteria.dart';
import 'automation_rule_args.dart';

/// Resource for managing an AWS Security Hub Automation Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Security Hub automation rule.
///
///
/// Using `pulumi import`, import Security Hub automation rule using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/automationRule:AutomationRule example arn:aws:securityhub:us-west-2:123456789012:automation-rule/473eddde-f5c4-4ae5-85c7-e922f271fffc
/// ```
class AutomationRule extends pulumi.CustomResource {
  /// A block that specifies one or more actions to update finding fields if a finding matches the conditions specified in `Criteria`. Documented below.
  late final pulumi.Output<List<AutomationRuleAction>> actions;

  /// The ARN of the Security Hub automation rule.
  late final pulumi.Output<String> arn;

  /// A block that specifies a set of ASFF finding field attributes and corresponding expected values that Security Hub uses to filter findings. Documented below.
  late final pulumi.Output<AutomationRuleCriteria> criteria;

  /// The description of the rule.
  late final pulumi.Output<String> description;

  /// Specifies whether a rule is the last to be applied with respect to a finding that matches the rule criteria. Defaults to `false`.
  late final pulumi.Output<bool> isTerminal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the rule.
  late final pulumi.Output<String> ruleName;

  /// An integer ranging from 1 to 1000 that represents the order in which the rule action is applied to findings. Security Hub applies rules with lower values for this parameter first.
  late final pulumi.Output<int> ruleOrder;

  /// Whether the rule is active after it is created.
  late final pulumi.Output<String> ruleStatus;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  AutomationRule(
    String name, {
    AutomationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/automationRule:AutomationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<AutomationRuleAction>>('actions');
    this.arn = registerOutput<String>('arn');
    this.criteria = registerOutput<AutomationRuleCriteria>('criteria');
    this.description = registerOutput<String>('description');
    this.isTerminal = registerOutput<bool>('isTerminal');
    this.region = registerOutput<String>('region');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleOrder = registerOutput<int>('ruleOrder');
    this.ruleStatus = registerOutput<String>('ruleStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
