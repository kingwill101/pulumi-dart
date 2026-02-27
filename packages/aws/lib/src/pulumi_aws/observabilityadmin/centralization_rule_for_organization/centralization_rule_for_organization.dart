import 'package:pulumi/pulumi.dart';
import '../centralization_rule_for_organization_rule/centralization_rule_for_organization_rule.dart';
import '../centralization_rule_for_organization_timeouts/centralization_rule_for_organization_timeouts.dart';
import 'centralization_rule_for_organization_args.dart';

/// Manages an AWS CloudWatch Observability Admin Centralization Rule For Organization.
///
/// Centralization rules enable you to centralize log data from multiple AWS accounts and regions within your organization to a single destination account and region. This helps with log management, compliance, and cost optimization by consolidating logs in a central location.
///
/// This requires an AWS account within an organization with at least [delegated administrator permissions](https://docs.aws.amazon.com/organizations/latest/APIReference/API_RegisterDelegatedAdministrator.html).
///
/// ## Example Usage
///
/// ### Basic Centralization Rule
///
///
///
/// ### Advanced Configuration with Encryption and Backup
///
///
///
/// ### Selective Log Group Filtering
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Admin Centralization Rule For Organization using the `rule_name`. For example:
///
/// ```sh
/// $ pulumi import aws:observabilityadmin/centralizationRuleForOrganization:CentralizationRuleForOrganization example example-centralization-rule
/// ```
class CentralizationRuleForOrganization extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the centralization rule. See `rule` below.
  ///
  /// The following arguments are optional:
  late final Output<CentralizationRuleForOrganizationRule> rule;

  /// ARN of the centralization rule.
  late final Output<String> ruleArn;

  /// Name of the centralization rule. Must be unique within the organization.
  late final Output<String> ruleName;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CentralizationRuleForOrganizationTimeouts?> timeouts;

  CentralizationRuleForOrganization(
    String name, {
    CentralizationRuleForOrganizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:observabilityadmin/centralizationRuleForOrganization:CentralizationRuleForOrganization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.rule = registerOutput<CentralizationRuleForOrganizationRule>('rule');
    this.ruleArn = registerOutput<String>('ruleArn');
    this.ruleName = registerOutput<String>('ruleName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<CentralizationRuleForOrganizationTimeouts?>('timeouts');
  }
}
