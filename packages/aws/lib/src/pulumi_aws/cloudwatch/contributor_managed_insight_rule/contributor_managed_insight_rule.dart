import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_managed_insight_rule_args.dart';

/// Resource for managing an AWS CloudWatch Contributor Managed Insight Rule.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Contributor Managed Insight Rule using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/contributorManagedInsightRule:ContributorManagedInsightRule example contributor_managed_insight_rule-id-12345678
/// ```
class ContributorManagedInsightRule extends pulumi.CustomResource {
  /// ARN of the Contributor Managed Insight Rule.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  late final pulumi.Output<String> resourceArn;
  late final pulumi.Output<String> ruleName;
  late final pulumi.Output<String> state;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> templateName;

  ContributorManagedInsightRule(
    String name, {
    ContributorManagedInsightRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorManagedInsightRule:ContributorManagedInsightRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.ruleName = registerOutput<String>('ruleName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateName = registerOutput<String>('templateName');
  }
}
