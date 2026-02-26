// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_firewall_policy_packet_mirroring_rule_match/network_firewall_policy_packet_mirroring_rule_match.dart';
import '../network_firewall_policy_packet_mirroring_rule_target_secure_tag/network_firewall_policy_packet_mirroring_rule_target_secure_tag.dart';

/// The set of arguments for NetworkFirewallPolicyPacketMirroringRule.
class NetworkFirewallPolicyPacketMirroringRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "mirror", <span pulumi-lang-nodejs=""doNotMirror"" pulumi-lang-dotnet=""DoNotMirror"" pulumi-lang-go=""doNotMirror"" pulumi-lang-python=""do_not_mirror"" pulumi-lang-yaml=""doNotMirror"" pulumi-lang-java=""doNotMirror"">"do_not_mirror"</span>, <span pulumi-lang-nodejs=""gotoNext"" pulumi-lang-dotnet=""GotoNext"" pulumi-lang-go=""gotoNext"" pulumi-lang-python=""goto_next"" pulumi-lang-yaml=""gotoNext"" pulumi-lang-java=""gotoNext"">"goto_next"</span>.
  final Input<String> action;

  /// An optional description for this resource.
  final Input<String>? description;

  /// The direction in which this rule applies.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final Input<String> direction;

  /// Denotes whether the firewall policy rule is disabled.
  /// When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist.
  /// If this is unspecified, the firewall policy rule will be enabled.
  final Input<bool>? disabled;

  /// The firewall policy of the resource.
  final Input<String> firewallPolicy;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final Input<NetworkFirewallPolicyPacketMirroringRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final Input<String>? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'mirror' and cannot be specified for other actions.
  final Input<String>? securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final Input<List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>?
      targetSecureTags;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'mirror' and cannot be set for other actions.
  final Input<bool>? tlsInspect;

  NetworkFirewallPolicyPacketMirroringRuleArgs({
    required this.action,
    this.description,
    required this.direction,
    this.disabled,
    required this.firewallPolicy,
    required this.match,
    required this.priority,
    this.project,
    this.ruleName,
    this.securityProfileGroup,
    this.targetSecureTags,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['direction'] = direction;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['firewallPolicy'] = firewallPolicy;
    map['match'] = Input.mapInputValue<
        NetworkFirewallPolicyPacketMirroringRuleMatch,
        Map<String, dynamic>>(match, (value) => value.toMap());
    map['priority'] = priority;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ruleNameValue = ruleName;
    if (ruleNameValue != null) {
      map['ruleName'] = ruleNameValue;
    }
    final securityProfileGroupValue = securityProfileGroup;
    if (securityProfileGroupValue != null) {
      map['securityProfileGroup'] = securityProfileGroupValue;
    }
    final targetSecureTagsValue = targetSecureTags;
    if (targetSecureTagsValue != null) {
      map['targetSecureTags'] = Input.mapOptionalInputValue<
              List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>,
              List<Map<String, dynamic>>>(
          targetSecureTagsValue,
          (value) => Input.encodeList<
              NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tlsInspectValue = tlsInspect;
    if (tlsInspectValue != null) {
      map['tlsInspect'] = tlsInspectValue;
    }
    return map;
  }

  factory NetworkFirewallPolicyPacketMirroringRuleArgs.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyPacketMirroringRuleArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      direction: Input.asInput<String>(map['direction']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      match: Input.asInput<NetworkFirewallPolicyPacketMirroringRuleMatch>(
          map['match']),
      priority: Input.asInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      ruleName: Input.asOptionalInput<String>(map['ruleName']),
      securityProfileGroup:
          Input.asOptionalInput<String>(map['securityProfileGroup']),
      targetSecureTags: Input.asOptionalInput<
              List<NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag>>(
          map['targetSecureTags']),
      tlsInspect: Input.asOptionalInput<bool>(map['tlsInspect']),
    );
  }
}
