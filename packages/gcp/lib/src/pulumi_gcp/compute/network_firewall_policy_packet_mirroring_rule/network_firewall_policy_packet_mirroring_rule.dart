import 'package:pulumi/pulumi.dart';
import '../network_firewall_policy_packet_mirroring_rule_match/network_firewall_policy_packet_mirroring_rule_match.dart';
import '../network_firewall_policy_packet_mirroring_rule_target_secure_tag/network_firewall_policy_packet_mirroring_rule_target_secure_tag.dart';
import 'network_firewall_policy_packet_mirroring_rule_args.dart';

/// Represents a packet mirroring rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (mirror or do_not_mirror).
///
/// To get more information about NetworkFirewallPolicyPacketMirroringRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkFirewallPolicies/addPacketMirroringRule)
///
/// ## Example Usage
///
/// ### Compute Network Firewall Policy Packet Mirroring Rule
///
///
///
///
/// ## Import
///
/// NetworkFirewallPolicyPacketMirroringRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/packetMirroringRules/{{priority}}`
///
/// * `{{project}}/{{firewall_policy}}/{{priority}}`
///
/// * `{{firewall_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, NetworkFirewallPolicyPacketMirroringRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default projects/{{project}}/global/firewallPolicies/{{firewall_policy}}/packetMirroringRules/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default {{project}}/{{firewall_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule default {{firewall_policy}}/{{priority}}
/// ```
class NetworkFirewallPolicyPacketMirroringRule extends CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
  late final Output<String> action;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description for this resource.
  late final Output<String?> description;

  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final Output<String> direction;

  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  late final Output<bool?> disabled;

  /// The firewall policy of the resource.
  late final Output<String> firewallPolicy;

  /// Type of the resource. Always `compute#packetMirroringRule` for firewall policy packet mirroring rules
  late final Output<String> kind;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final Output<NetworkFirewallPolicyPacketMirroringRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  late final Output<String?> ruleName;

  /// Calculation of the complexity of a single firewall policy rule.
  late final Output<int> ruleTupleCount;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  late final Output<String?> securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  late final Output<
          List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>?>
      targetSecureTags;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  late final Output<bool?> tlsInspect;

  NetworkFirewallPolicyPacketMirroringRule(
    String name, {
    NetworkFirewallPolicyPacketMirroringRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkFirewallPolicyPacketMirroringRule:NetworkFirewallPolicyPacketMirroringRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.direction = registerOutput<String>('direction');
    this.disabled = registerOutput<bool?>('disabled');
    this.firewallPolicy = registerOutput<String>('firewallPolicy');
    this.kind = registerOutput<String>('kind');
    this.match =
        registerOutput<NetworkFirewallPolicyPacketMirroringRuleMatch>('match');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.ruleName = registerOutput<String?>('ruleName');
    this.ruleTupleCount = registerOutput<int>('ruleTupleCount');
    this.securityProfileGroup = registerOutput<String?>('securityProfileGroup');
    this.targetSecureTags = registerOutput<
            List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>?>(
        'targetSecureTags');
    this.tlsInspect = registerOutput<bool?>('tlsInspect');
  }
}
