// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_response_compute_v1.dart';
import 'firewall_policy_rule_secure_tag_response_compute_v1.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class FirewallPolicyRuleResponseComputeV1 {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny" and "goto_next".
  final String action;

  /// An optional description for this resource.
  final String description;

  /// The direction in which this rule applies.
  final String direction;

  /// Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled.
  final bool disabled;

  /// Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules.
  final bool enableLogging;

  /// [Output only] Type of the resource. Always compute#firewallPolicyRule for firewall policy rules
  final String kind;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  final FirewallPolicyRuleMatcherResponseComputeV1 match;

  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final int priority;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final String ruleName;

  /// Calculation of the complexity of a single firewall policy rule.
  final int ruleTupleCount;

  /// A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  final List<String> targetResources;

  /// A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  final List<FirewallPolicyRuleSecureTagResponseComputeV1> targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final List<String> targetServiceAccounts;

  FirewallPolicyRuleResponseComputeV1({
    required this.action,
    required this.description,
    required this.direction,
    required this.disabled,
    required this.enableLogging,
    required this.kind,
    required this.match,
    required this.priority,
    required this.ruleName,
    required this.ruleTupleCount,
    required this.targetResources,
    required this.targetSecureTags,
    required this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['description'] = description;
    map['direction'] = direction;
    map['disabled'] = disabled;
    map['enableLogging'] = enableLogging;
    map['kind'] = kind;
    map['match'] = match.toMap();
    map['priority'] = priority;
    map['ruleName'] = ruleName;
    map['ruleTupleCount'] = ruleTupleCount;
    map['targetResources'] = targetResources;
    map['targetSecureTags'] = pulumi.Input.encodeList<
        FirewallPolicyRuleSecureTagResponseComputeV1,
        Map<String, dynamic>>(targetSecureTags, (value) => value.toMap());
    map['targetServiceAccounts'] = targetServiceAccounts;
    return map;
  }

  factory FirewallPolicyRuleResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyRuleResponseComputeV1(
      action: map['action'] as String,
      description: map['description'] as String,
      direction: map['direction'] as String,
      disabled: map['disabled'] as bool,
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
      match: FirewallPolicyRuleMatcherResponseComputeV1.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
      priority: map['priority'] as int,
      ruleName: map['ruleName'] as String,
      ruleTupleCount: map['ruleTupleCount'] as int,
      targetResources: (map['targetResources'] as List).cast<String>(),
      targetSecureTags:
          pulumi.Input.decodeList<FirewallPolicyRuleSecureTagResponseComputeV1>(
              map['targetSecureTags'],
              (value) => FirewallPolicyRuleSecureTagResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetServiceAccounts:
          (map['targetServiceAccounts'] as List).cast<String>(),
    );
  }
}
