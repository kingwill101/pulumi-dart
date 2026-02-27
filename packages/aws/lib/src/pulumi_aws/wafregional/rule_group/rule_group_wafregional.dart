import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_activated_rule/rule_group_activated_rule_wafregional.dart';
import 'rule_group_wafregional_args.dart';

/// Provides a WAF Regional Rule Group Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Rule Group using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/ruleGroup:RuleGroup example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RuleGroupWafregional extends pulumi.CustomResource {
  /// A list of activated rules, see below
  late final pulumi.Output<List<RuleGroupActivatedRuleWafregional>?>
      activatedRules;

  /// The ARN of the WAF Regional Rule Group.
  late final pulumi.Output<String> arn;

  /// A friendly name for the metrics from the rule group
  late final pulumi.Output<String> metricName;

  /// A friendly name of the rule group
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  RuleGroupWafregional(
    String name, {
    RuleGroupWafregionalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ruleGroup:RuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activatedRules =
        registerOutput<List<RuleGroupActivatedRuleWafregional>?>(
            'activatedRules');
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
