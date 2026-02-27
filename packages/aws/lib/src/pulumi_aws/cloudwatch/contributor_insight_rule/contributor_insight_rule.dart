import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_insight_rule_args.dart';

/// Resource for managing an AWS CloudWatch Contributor Insight Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Contributor Insight Rule using the `rule_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/contributorInsightRule:ContributorInsightRule example contributor_insight_rule-name
/// ```
class ContributorInsightRule extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the Contributor Insight Rule.
  late final pulumi.Output<String> resourceArn;

  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  late final pulumi.Output<String> ruleDefinition;

  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> ruleName;

  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  late final pulumi.Output<String?> ruleState;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  ContributorInsightRule(
    String name, {
    ContributorInsightRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorInsightRule:ContributorInsightRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.ruleDefinition = registerOutput<String>('ruleDefinition');
    this.ruleName = registerOutput<String>('ruleName');
    this.ruleState = registerOutput<String?>('ruleState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
