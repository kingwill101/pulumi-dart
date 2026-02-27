import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_security_policy_rule_match/organization_security_policy_rule_match.dart';
import 'organization_security_policy_rule_args.dart';

/// A rule for the OrganizationSecurityPolicy.
///
/// To get more information about OrganizationSecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/organizationSecurityPolicies/addRule)
/// * How-to Guides
/// * [Creating firewall rules](https://cloud.google.com/vpc/docs/using-firewall-policies#create-rules)
///
/// ## Example Usage
///
/// ### Organization Security Policy Rule Basic
///
///
///
///
/// ## Import
///
/// OrganizationSecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `{{policy_id}}/priority/{{priority}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule default {{policy_id}}/priority/{{priority}}
/// ```
class OrganizationSecurityPolicyRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny" or "goto_next".
  late final pulumi.Output<String> action;

  /// A description of the rule.
  late final pulumi.Output<String?> description;

  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final pulumi.Output<String?> direction;

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  late final pulumi.Output<bool?> enableLogging;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRuleMatch> match;

  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  late final pulumi.Output<String> policyId;

  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  late final pulumi.Output<int> priority;

  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  late final pulumi.Output<List<String>?> targetResources;

  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;

  OrganizationSecurityPolicyRule(
    String name, {
    OrganizationSecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String?>('direction');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.match = registerOutput<OrganizationSecurityPolicyRuleMatch>('match');
    this.policyId = registerOutput<String>('policyId');
    this.preview = registerOutput<bool?>('preview');
    this.priority = registerOutput<int>('priority');
    this.targetResources = registerOutput<List<String>?>('targetResources');
    this.targetServiceAccounts =
        registerOutput<List<String>?>('targetServiceAccounts');
  }
}
