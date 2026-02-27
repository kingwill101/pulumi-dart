import 'package:pulumi/pulumi.dart';
import '../firewall_policy_with_rules_predefined_rule/firewall_policy_with_rules_predefined_rule.dart';
import '../firewall_policy_with_rules_rule/firewall_policy_with_rules_rule.dart';
import 'firewall_policy_with_rules_args.dart';

/// The Compute FirewallPolicy with rules resource. It declaratively manges all
/// rules in the firewall policy.
///
///
///
/// ## Example Usage
///
/// ### Compute Firewall Policy With Rules Full
///
///
///
///
/// ## Import
///
/// FirewallPolicyWithRules can be imported using any of these accepted formats:
///
/// * `locations/global/firewallPolicies/{{policy_id}}`
///
/// * `{{policy_id}}`
///
/// When using the `pulumi import` command, FirewallPolicyWithRules can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules default locations/global/firewallPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules default {{policy_id}}
/// ```
class FirewallPolicyWithRules extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  late final Output<String> fingerprint;

  /// The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  late final Output<String> parent;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> policyId;

  /// A list of pre-define firewall policy rules.
  /// Structure is documented below.
  late final Output<List<FirewallPolicyWithRulesPredefinedRule>>
      predefinedRules;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  late final Output<int> ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  late final Output<List<FirewallPolicyWithRulesRule>> rules;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// A textual name of the security policy.
  late final Output<String> shortName;

  FirewallPolicyWithRules(
    String name, {
    FirewallPolicyWithRulesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/firewallPolicyWithRules:FirewallPolicyWithRules',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.parent = registerOutput<String>('parent');
    this.policyId = registerOutput<String>('policyId');
    this.predefinedRules =
        registerOutput<List<FirewallPolicyWithRulesPredefinedRule>>(
            'predefinedRules');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.rules = registerOutput<List<FirewallPolicyWithRulesRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.shortName = registerOutput<String>('shortName');
  }
}
