import 'package:pulumi/pulumi.dart';
import '../rate_based_rule_predicate/rate_based_rule_predicate.dart';
import 'rate_based_rule_args.dart';

/// Provides a WAF Rate Based Rule Resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Rated Based Rule using the id. For example:
///
/// ```sh
/// $ pulumi import aws:waf/rateBasedRule:RateBasedRule wafrule a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class RateBasedRule extends CustomResource {
  /// Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// The name or description for the Amazon CloudWatch metric of this rule.
  late final Output<String> metricName;

  /// The name or description of the rule.
  late final Output<String> name;

  /// The objects to include in a rule (documented below).
  late final Output<List<RateBasedRulePredicate>?> predicates;

  /// Valid value is IP.
  late final Output<String> rateKey;

  /// The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100.
  late final Output<int> rateLimit;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  RateBasedRule(
    String name, {
    RateBasedRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:waf/rateBasedRule:RateBasedRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.predicates =
        registerOutput<List<RateBasedRulePredicate>?>('predicates');
    this.rateKey = registerOutput<String>('rateKey');
    this.rateLimit = registerOutput<int>('rateLimit');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
