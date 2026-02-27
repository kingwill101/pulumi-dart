import 'package:pulumi/pulumi.dart';
import '../rule_group_activated_rule/rule_group_activated_rule2.dart';
import 'rule_group_args3.dart';

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
class RuleGroup3 extends CustomResource {
  /// A list of activated rules, see below
  late final Output<List<RuleGroupActivatedRule2>?> activatedRules;

  /// The ARN of the WAF Regional Rule Group.
  late final Output<String> arn;

  /// A friendly name for the metrics from the rule group
  late final Output<String> metricName;

  /// A friendly name of the rule group
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RuleGroup3(
    String name, {
    RuleGroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ruleGroup:RuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedRules =
        registerOutput<List<RuleGroupActivatedRule2>?>('activatedRules');
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
