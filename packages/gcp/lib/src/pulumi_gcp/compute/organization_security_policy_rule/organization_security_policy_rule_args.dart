// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_security_policy_rule_match/organization_security_policy_rule_match.dart';

/// The set of arguments for OrganizationSecurityPolicyRule.
class OrganizationSecurityPolicyRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny" or "goto_next".
  final Input<String> action;

  /// A description of the rule.
  final Input<String>? description;

  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final Input<String>? direction;

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  final Input<bool>? enableLogging;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final Input<OrganizationSecurityPolicyRuleMatch> match;

  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  final Input<String> policyId;

  /// If set to true, the specified action is not enforced.
  final Input<bool>? preview;

  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  final Input<int> priority;

  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  final Input<List<String>>? targetResources;

  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final Input<List<String>>? targetServiceAccounts;

  OrganizationSecurityPolicyRuleArgs({
    required this.action,
    this.description,
    this.direction,
    this.enableLogging,
    required this.match,
    required this.policyId,
    this.preview,
    required this.priority,
    this.targetResources,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = directionValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    map['match'] = Input.mapInputValue<OrganizationSecurityPolicyRuleMatch,
        Map<String, dynamic>>(match, (value) => value.toMap());
    map['policyId'] = policyId;
    final previewValue = preview;
    if (previewValue != null) {
      map['preview'] = previewValue;
    }
    map['priority'] = priority;
    final targetResourcesValue = targetResources;
    if (targetResourcesValue != null) {
      map['targetResources'] = targetResourcesValue;
    }
    final targetServiceAccountsValue = targetServiceAccounts;
    if (targetServiceAccountsValue != null) {
      map['targetServiceAccounts'] = targetServiceAccountsValue;
    }
    return map;
  }

  factory OrganizationSecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      direction: Input.asOptionalInput<String>(map['direction']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      match: Input.asInput<OrganizationSecurityPolicyRuleMatch>(map['match']),
      policyId: Input.asInput<String>(map['policyId']),
      preview: Input.asOptionalInput<bool>(map['preview']),
      priority: Input.asInput<int>(map['priority']),
      targetResources:
          Input.asOptionalInput<List<String>>(map['targetResources']),
      targetServiceAccounts:
          Input.asOptionalInput<List<String>>(map['targetServiceAccounts']),
    );
  }
}
