// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_firewall_policy_rule_match/network_firewall_policy_rule_match.dart';
import '../network_firewall_policy_rule_target_secure_tag/network_firewall_policy_rule_target_secure_tag.dart';

/// The set of arguments for NetworkFirewallPolicyRule.
class NetworkFirewallPolicyRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", "goto_next" and "apply_security_profile_group".
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

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on "goto_next" rules.
  final pulumi.Input<bool>? enableLogging;

  /// The firewall policy of the resource.
  final pulumi.Input<String> firewallPolicy;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<NetworkFirewallPolicyRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final pulumi.Input<String>? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  final pulumi.Input<String>? securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyRuleTargetSecureTag>>?
      targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final pulumi.Input<bool>? tlsInspect;

  NetworkFirewallPolicyRuleArgs({
    required this.action,
    this.description,
    required this.direction,
    this.disabled,
    this.enableLogging,
    required this.firewallPolicy,
    required this.match,
    required this.priority,
    this.project,
    this.ruleName,
    this.securityProfileGroup,
    this.targetSecureTags,
    this.targetServiceAccounts,
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
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    map['firewallPolicy'] = firewallPolicy;
    map['match'] = pulumi.Input.mapInputValue<NetworkFirewallPolicyRuleMatch,
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
      map['targetSecureTags'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkFirewallPolicyRuleTargetSecureTag>,
              List<Map<String, dynamic>>>(
          targetSecureTagsValue,
          (value) => pulumi.Input.encodeList<
              NetworkFirewallPolicyRuleTargetSecureTag,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final targetServiceAccountsValue = targetServiceAccounts;
    if (targetServiceAccountsValue != null) {
      map['targetServiceAccounts'] = targetServiceAccountsValue;
    }
    final tlsInspectValue = tlsInspect;
    if (tlsInspectValue != null) {
      map['tlsInspect'] = tlsInspectValue;
    }
    return map;
  }

  factory NetworkFirewallPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyRuleArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      direction: pulumi.Input.asInput<String>(map['direction']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      enableLogging: pulumi.Input.asOptionalInput<bool>(map['enableLogging']),
      firewallPolicy: pulumi.Input.asInput<String>(map['firewallPolicy']),
      match: pulumi.Input.asInput<NetworkFirewallPolicyRuleMatch>(map['match']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      ruleName: pulumi.Input.asOptionalInput<String>(map['ruleName']),
      securityProfileGroup:
          pulumi.Input.asOptionalInput<String>(map['securityProfileGroup']),
      targetSecureTags: pulumi.Input.asOptionalInput<
              List<NetworkFirewallPolicyRuleTargetSecureTag>>(
          map['targetSecureTags']),
      targetServiceAccounts: pulumi.Input.asOptionalInput<List<String>>(
          map['targetServiceAccounts']),
      tlsInspect: pulumi.Input.asOptionalInput<bool>(map['tlsInspect']),
    );
  }
}
