import 'package:pulumi/pulumi.dart';
import '../rule_group_activated_rule/rule_group_activated_rule.dart';
import 'rule_group_args2.dart';

/// Provides a WAF Rule Group Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Rule Group using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/ruleGroup:RuleGroup example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RuleGroup2 extends CustomResource {
  /// A list of activated rules, see below
  late final Output<List<RuleGroupActivatedRule>?> activatedRules;

  /// The ARN of the WAF rule group.
  late final Output<String> arn;

  /// A friendly name for the metrics from the rule group
  late final Output<String> metricName;

  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RuleGroup2(
    String name, {
    RuleGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/ruleGroup:RuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activatedRules =
        registerOutput<List<RuleGroupActivatedRule>?>('activatedRules');
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
