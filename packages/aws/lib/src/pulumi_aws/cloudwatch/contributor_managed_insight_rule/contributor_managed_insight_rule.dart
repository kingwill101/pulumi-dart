import 'package:pulumi/pulumi.dart';
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
class ContributorManagedInsightRule extends CustomResource {
  /// ARN of the Contributor Managed Insight Rule.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  late final Output<String> resourceArn;
  late final Output<String> ruleName;
  late final Output<String> state;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  late final Output<String> templateName;

  ContributorManagedInsightRule(
    String name, {
    ContributorManagedInsightRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/contributorManagedInsightRule:ContributorManagedInsightRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
