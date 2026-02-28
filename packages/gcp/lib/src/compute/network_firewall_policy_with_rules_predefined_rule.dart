// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_with_rules_predefined_rule_match.dart';
import 'network_firewall_policy_with_rules_predefined_rule_target_secure_tag.dart';

class NetworkFirewallPolicyWithRulesPredefinedRule {
  /// (Output)
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny", "apply_security_profile_group" or "goto_next".
  final String? action;

  /// An optional description of this resource.
  final String? description;

  /// (Output)
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  final String? direction;

  /// (Output)
  /// Denotes whether the firewall policy rule is disabled. When set to true,
  /// the firewall policy rule is not enforced and traffic behaves as if it did
  /// not exist. If this is unspecified, the firewall policy rule will be
  /// enabled.
  final bool? disabled;

  /// (Output)
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  final bool? enableLogging;

  /// (Output)
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final List<NetworkFirewallPolicyWithRulesPredefinedRuleMatch>? matches;

  /// (Output)
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest priority.
  final int? priority;

  /// (Output)
  /// An optional name for the rule. This field is not a unique identifier
  /// and can be updated.
  final String? ruleName;

  /// (Output)
  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example:
  /// https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action is 'apply_security_profile_group'.
  final String? securityProfileGroup;

  /// (Output)
  /// A list of secure tags that controls which instances the firewall rule
  /// applies to. If <code>targetSecureTag</code> are specified, then the
  /// firewall rule applies only to instances in the VPC network that have one
  /// of those EFFECTIVE secure tags, if all the target_secure_tag are in
  /// INEFFECTIVE state, then this rule will be ignored.
  /// <code>targetSecureTag</code> may not be set at the same time as
  /// <code>targetServiceAccounts</code>.
  /// If neither <code>targetServiceAccounts</code> nor
  /// <code>targetSecureTag</code> are specified, the firewall rule applies
  /// to all instances on the specified network.
  /// Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final List<NetworkFirewallPolicyWithRulesPredefinedRuleTargetSecureTag>?
      targetSecureTags;

  /// (Output)
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final List<String>? targetServiceAccounts;

  /// (Output)
  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// It can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final bool? tlsInspect;

  /// Creates a new [NetworkFirewallPolicyWithRulesPredefinedRule].
  /// [action] (Output)
  /// [description] An optional description of this resource.
  /// [direction] (Output)
  /// [disabled] (Output)
  /// [enableLogging] (Output)
  /// [matches] (Output)
  /// [priority] (Output)
  /// [ruleName] (Output)
  /// [securityProfileGroup] (Output)
  /// [targetSecureTags] (Output)
  /// [targetServiceAccounts] (Output)
  /// [tlsInspect] (Output)
  NetworkFirewallPolicyWithRulesPredefinedRule({
    this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.matches,
    this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetSecureTags,
    this.targetServiceAccounts,
    this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = directionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] = pulumi.Input.encodeList<
          NetworkFirewallPolicyWithRulesPredefinedRuleMatch,
          Map<String, dynamic>>(matchesValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
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
      map['targetSecureTags'] = pulumi.Input.encodeList<
              NetworkFirewallPolicyWithRulesPredefinedRuleTargetSecureTag,
              Map<String, dynamic>>(
          targetSecureTagsValue, (value) => value.toMap());
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

  factory NetworkFirewallPolicyWithRulesPredefinedRule.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesPredefinedRule(
      action: map['action'] == null ? null : map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      direction: map['direction'] == null ? null : map['direction'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      enableLogging:
          map['enableLogging'] == null ? null : map['enableLogging'] as bool,
      matches: map['matches'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatch>(
              map['matches'],
              (value) =>
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatch.fromMap(
                      (value as Map).cast<String, dynamic>())),
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      securityProfileGroup: map['securityProfileGroup'] == null
          ? null
          : map['securityProfileGroup'] as String,
      targetSecureTags: map['targetSecureTags'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkFirewallPolicyWithRulesPredefinedRuleTargetSecureTag>(
              map['targetSecureTags'],
              (value) =>
                  NetworkFirewallPolicyWithRulesPredefinedRuleTargetSecureTag
                      .fromMap((value as Map).cast<String, dynamic>())),
      targetServiceAccounts: map['targetServiceAccounts'] == null
          ? null
          : (map['targetServiceAccounts'] as List).cast<String>(),
      tlsInspect: map['tlsInspect'] == null ? null : map['tlsInspect'] as bool,
    );
  }
}
