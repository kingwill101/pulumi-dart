import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_firewall_policy_with_rules_predefined_rule/network_firewall_policy_with_rules_predefined_rule.dart';
import '../network_firewall_policy_with_rules_rule/network_firewall_policy_with_rules_rule.dart';
import 'network_firewall_policy_with_rules_args.dart';

/// The Compute NetworkFirewallPolicy with rules resource
///
///
///
/// ## Example Usage
///
/// ### Compute Network Firewall Policy With Rules Full
///
///
///
///
/// ## Import
///
/// NetworkFirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default projects/{{project}}/global/firewallPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules default {{name}}
/// ```
class NetworkFirewallPolicyWithRules extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> networkFirewallPolicyId;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`.
  late final pulumi.Output<String> policyType;

  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyWithRulesPredefinedRule>>
      predefinedRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final pulumi.Output<int> ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkFirewallPolicyWithRulesRule>> rules;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  NetworkFirewallPolicyWithRules(
    String name, {
    NetworkFirewallPolicyWithRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyWithRules:NetworkFirewallPolicyWithRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyId =
        registerOutput<String>('networkFirewallPolicyId');
    this.policyType = registerOutput<String>('policyType');
    this.predefinedRules =
        registerOutput<List<NetworkFirewallPolicyWithRulesPredefinedRule>>(
            'predefinedRules');
    this.project = registerOutput<String>('project');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules =
        registerOutput<List<NetworkFirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
