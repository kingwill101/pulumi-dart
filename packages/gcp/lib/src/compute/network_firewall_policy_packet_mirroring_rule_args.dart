// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_packet_mirroring_rule_match.dart';
import 'network_firewall_policy_packet_mirroring_rule_target_secure_tag.dart';

/// {@template pulumi_compute_network_firewall_policy_packet_mirroring_rule_network_firewall_policy_packet_mirroring_rule_args_doc}
/// The set of arguments for NetworkFirewallPolicyPacketMirroringRule.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_packet_mirroring_rule_network_firewall_policy_packet_mirroring_rule_args_doc}
class NetworkFirewallPolicyPacketMirroringRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
  final pulumi.Input<String> action;

  /// An optional description for this resource.
  final pulumi.Input<String>? description;

  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String> direction;

  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  final pulumi.Input<bool>? disabled;

  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<NetworkFirewallPolicyPacketMirroringRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<
    List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>
  >?
  targetSecureTags;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  /// Creates a new [NetworkFirewallPolicyPacketMirroringRuleArgs].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "mirror", "do_not_mirror", "goto_next".
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled.
  /// [firewallPolicy] The firewall policy of the resource.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted.
  NetworkFirewallPolicyPacketMirroringRuleArgs({
    required String action,
    String? description,
    required String direction,
    bool? disabled,
    required String firewallPolicy,
    required NetworkFirewallPolicyPacketMirroringRuleMatch match,
    required int priority,
    String? project,
    String? ruleName,
    String? securityProfileGroup,
    List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>?
    targetSecureTags,
    bool? tlsInspect,
  }) : action = pulumi.Input.asInput<String>(action),
       description = pulumi.Input.asOptionalInput<String>(description),
       direction = pulumi.Input.asInput<String>(direction),
       disabled = pulumi.Input.asOptionalInput<bool>(disabled),
       firewallPolicy = pulumi.Input.asInput<String>(firewallPolicy),
       match = pulumi
           .Input.asInput<NetworkFirewallPolicyPacketMirroringRuleMatch>(match),
       priority = pulumi.Input.asInput<int>(priority),
       project = pulumi.Input.asOptionalInput<String>(project),
       ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
       securityProfileGroup = pulumi.Input.asOptionalInput<String>(
         securityProfileGroup,
       ),
       targetSecureTags =
           pulumi.Input.asOptionalInput<
             List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>
           >(targetSecureTags),
       tlsInspect = pulumi.Input.asOptionalInput<bool>(tlsInspect);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'direction': direction,
      'disabled': ?disabled,
      'firewallPolicy': firewallPolicy,
      'match':
          pulumi.Input.mapInputValue<
            NetworkFirewallPolicyPacketMirroringRuleMatch,
            Map<String, dynamic>
          >(match, (value) => value.toMap()),
      'priority': priority,
      'project': ?project,
      'ruleName': ?ruleName,
      'securityProfileGroup': ?securityProfileGroup,
      'targetSecureTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>,
            List<Map<String, dynamic>>
          >(
            targetSecureTags,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsInspect': ?tlsInspect,
    };
  }

  factory NetworkFirewallPolicyPacketMirroringRuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkFirewallPolicyPacketMirroringRuleArgs(
      action: map['action'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      direction: map['direction'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      firewallPolicy: map['firewallPolicy'] as String,
      match: NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap(
        (map['match'] as Map).cast<String, dynamic>(),
      ),
      priority: map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      securityProfileGroup: map['securityProfileGroup'] == null
          ? null
          : map['securityProfileGroup'] as String,
      targetSecureTags: map['targetSecureTags'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag
            >(
              map['targetSecureTags'],
              (value) =>
                  NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      tlsInspect: map['tlsInspect'] == null ? null : map['tlsInspect'] as bool,
    );
  }
}
