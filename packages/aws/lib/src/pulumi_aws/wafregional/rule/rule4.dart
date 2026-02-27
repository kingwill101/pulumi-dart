import 'package:pulumi/pulumi.dart';
import '../rule_predicate/rule_predicate2.dart';
import 'rule_args4.dart';

/// Provides an WAF Regional Rule Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
///
/// ## Nested Fields
///
/// ### `predicate`
///
/// See the [WAF Documentation](https://docs.aws.amazon.com/waf/latest/APIReference/API_Predicate.html) for more information.
///
/// #### Arguments
///
/// * `type` - (Required) The type of predicate in a rule. Valid values: `ByteMatch`, `GeoMatch`, `IPMatch`, `RegexMatch`, `SizeConstraint`, `SqlInjectionMatch`, or `XssMatch`
/// * `data_id` - (Required) The unique identifier of a predicate, such as the ID of a `ByteMatchSet` or `IPSet`.
/// * `negated` - (Required) Whether to use the settings or the negated settings that you specified in the objects.
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Rule using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/rule:Rule wafrule a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class Rule4 extends CustomResource {
  /// The ARN of the WAF Regional Rule.
  late final Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule.
  late final Output<String> metricName;

  /// The name or description of the rule.
  late final Output<String> name;

  /// The objects to include in a rule (documented below).
  late final Output<List<RulePredicate2>?> predicates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Rule4(
    String name, {
    RuleArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.predicates = registerOutput<List<RulePredicate2>?>('predicates');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
