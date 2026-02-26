// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'firewall_policy_rule_direction.dart';
import 'firewall_policy_rule_matcher.dart';
import 'firewall_policy_rule_secure_tag.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class FirewallPolicyRule {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny" and "goto_next".
  final String? action;

  /// An optional description for this resource.
  final String? description;

  /// The direction in which this rule applies.
  final FirewallPolicyRuleDirection? direction;

  /// Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled.
  final bool? disabled;

  /// Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules.
  final bool? enableLogging;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  final FirewallPolicyRuleMatcher? match;

  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final int? priority;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final String? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance. Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  final String? securityProfileGroup;

  /// A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  final List<String>? targetResources;

  /// A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  final List<FirewallPolicyRuleSecureTag>? targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final List<String>? targetServiceAccounts;

  /// Boolean flag indicating if the traffic should be TLS decrypted. Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final bool? tlsInspect;

  FirewallPolicyRule({
    this.action,
    this.description,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.match,
    this.priority,
    this.ruleName,
    this.securityProfileGroup,
    this.targetResources,
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
      map['direction'] = directionValue.value;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
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
    final targetResourcesValue = targetResources;
    if (targetResourcesValue != null) {
      map['targetResources'] = targetResourcesValue;
    }
    final targetSecureTagsValue = targetSecureTags;
    if (targetSecureTagsValue != null) {
      map['targetSecureTags'] =
          Input.encodeList<FirewallPolicyRuleSecureTag, Map<String, dynamic>>(
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

  factory FirewallPolicyRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRule(
      action: map['action'] == null ? null : map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      direction: map['direction'] == null
          ? null
          : FirewallPolicyRuleDirection.fromValue(map['direction'] as String),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      enableLogging:
          map['enableLogging'] == null ? null : map['enableLogging'] as bool,
      match: map['match'] == null
          ? null
          : FirewallPolicyRuleMatcher.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      securityProfileGroup: map['securityProfileGroup'] == null
          ? null
          : map['securityProfileGroup'] as String,
      targetResources: map['targetResources'] == null
          ? null
          : (map['targetResources'] as List).cast<String>(),
      targetSecureTags: map['targetSecureTags'] == null
          ? null
          : Input.decodeList<FirewallPolicyRuleSecureTag>(
              map['targetSecureTags'],
              (value) => FirewallPolicyRuleSecureTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetServiceAccounts: map['targetServiceAccounts'] == null
          ? null
          : (map['targetServiceAccounts'] as List).cast<String>(),
      tlsInspect: map['tlsInspect'] == null ? null : map['tlsInspect'] as bool,
    );
  }
}
