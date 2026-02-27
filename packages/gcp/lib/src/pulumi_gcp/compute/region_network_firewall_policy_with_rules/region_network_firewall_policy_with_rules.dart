import 'package:pulumi/pulumi.dart';
import '../region_network_firewall_policy_with_rules_predefined_rule/region_network_firewall_policy_with_rules_predefined_rule.dart';
import '../region_network_firewall_policy_with_rules_rule/region_network_firewall_policy_with_rules_rule.dart';
import 'region_network_firewall_policy_with_rules_args.dart';

/// The Compute NetworkFirewallPolicy with rules resource
///
///
///
/// ## Example Usage
///
/// ### Compute Region Network Firewall Policy With Rules Full
///
///
///
/// ### Compute Region Network Firewall Policy With Rules Roce
///
///
///
///
/// ## Import
///
/// RegionNetworkFirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionNetworkFirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default projects/{{project}}/regions/{{region}}/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules default {{name}}
/// ```
class RegionNetworkFirewallPolicyWithRules extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final Output<String> fingerprint;

  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> networkFirewallPolicyId;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  late final Output<String> policyType;

  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  late final Output<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>
      predefinedRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of this resource.
  late final Output<String> region;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final Output<int> ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final Output<List<RegionNetworkFirewallPolicyWithRulesRule>> rules;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  RegionNetworkFirewallPolicyWithRules(
    String name, {
    RegionNetworkFirewallPolicyWithRulesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkFirewallPolicyWithRules:RegionNetworkFirewallPolicyWithRules',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyId =
        registerOutput<String>('networkFirewallPolicyId');
    this.policyType = registerOutput<String>('policyType');
    this.predefinedRules = registerOutput<
            List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>(
        'predefinedRules');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules =
        registerOutput<List<RegionNetworkFirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
