import 'package:pulumi/pulumi.dart';
import '../rule_predicate/rule_predicate.dart';
import 'rule_args3.dart';

/// Provides a WAF Rule Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF rules using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/rule:Rule example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Rule3 extends CustomResource {
  /// The ARN of the WAF rule.
  late final Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule. The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.
  late final Output<String> metricName;

  /// The name or description of the rule.
  late final Output<String> name;

  /// The objects to include in a rule (documented below).
  late final Output<List<RulePredicate>?> predicates;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Rule3(
    String name, {
    RuleArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.predicates = registerOutput<List<RulePredicate>?>('predicates');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
