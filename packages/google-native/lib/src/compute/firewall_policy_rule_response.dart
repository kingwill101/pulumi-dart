// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_response.dart';
import 'firewall_policy_rule_secure_tag_response.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class FirewallPolicyRuleResponse {
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
  final FirewallPolicyRuleMatcherResponse match;

  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final int priority;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final String ruleName;

  /// Calculation of the complexity of a single firewall policy rule.
  final int ruleTupleCount;

  /// A fully-qualified URL of a SecurityProfile resource instance. Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  final String securityProfileGroup;

  /// A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  final List<String> targetResources;

  /// A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  final List<FirewallPolicyRuleSecureTagResponse> targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final List<String> targetServiceAccounts;

  /// Boolean flag indicating if the traffic should be TLS decrypted. Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final bool tlsInspect;

  /// Creates a new [FirewallPolicyRuleResponse].
  /// [action] The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny" and "goto_next".
  /// [description] An optional description for this resource.
  /// [direction] The direction in which this rule applies.
  /// [disabled] Denotes whether the firewall policy rule is disabled. When set to true, the firewall policy rule is not enforced and traffic behaves as if it did not exist. If this is unspecified, the firewall policy rule will be enabled.
  /// [enableLogging] Denotes whether to enable logging for a particular rule. If logging is enabled, logs will be exported to the configured export destination in Stackdriver. Logs may be exported to BigQuery or Pub/Sub. Note: you cannot enable logging on "goto_next" rules.
  /// [kind] [Output only] Type of the resource. Always compute#firewallPolicyRule for firewall policy rules
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  /// [ruleName] An optional name for the rule. This field is not a unique identifier and can be updated.
  /// [ruleTupleCount] Calculation of the complexity of a single firewall policy rule.
  /// [securityProfileGroup] A fully-qualified URL of a SecurityProfile resource instance. Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  /// [targetResources] A list of network resource URLs to which this rule applies. This field allows you to control which network's VMs get this rule. If this field is left blank, all VMs within the organization will receive the rule.
  /// [targetSecureTags] A list of secure tags that controls which instances the firewall rule applies to. If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the target_secure_tag are in INEFFECTIVE state, then this rule will be ignored. targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of instances that are applied with this rule.
  /// [tlsInspect] Boolean flag indicating if the traffic should be TLS decrypted. Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  FirewallPolicyRuleResponse({
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
    required this.securityProfileGroup,
    required this.targetResources,
    required this.targetSecureTags,
    required this.targetServiceAccounts,
    required this.tlsInspect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'direction': direction,
      'disabled': disabled,
      'enableLogging': enableLogging,
      'kind': kind,
      'match': match.toMap(),
      'priority': priority,
      'ruleName': ruleName,
      'ruleTupleCount': ruleTupleCount,
      'securityProfileGroup': securityProfileGroup,
      'targetResources': targetResources,
      'targetSecureTags':
          pulumi.Input.encodeList<
            FirewallPolicyRuleSecureTagResponse,
            Map<String, dynamic>
          >(targetSecureTags, (value) => value.toMap()),
      'targetServiceAccounts': targetServiceAccounts,
      'tlsInspect': tlsInspect,
    };
  }

  factory FirewallPolicyRuleResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleResponse(
      action: map['action'] as String,
      description: map['description'] as String,
      direction: map['direction'] as String,
      disabled: map['disabled'] as bool,
      enableLogging: map['enableLogging'] as bool,
      kind: map['kind'] as String,
      match: FirewallPolicyRuleMatcherResponse.fromMap(
        (map['match'] as Map).cast<String, dynamic>(),
      ),
      priority: map['priority'] as int,
      ruleName: map['ruleName'] as String,
      ruleTupleCount: map['ruleTupleCount'] as int,
      securityProfileGroup: map['securityProfileGroup'] as String,
      targetResources: (map['targetResources'] as List).cast<String>(),
      targetSecureTags:
          pulumi.Input.decodeList<FirewallPolicyRuleSecureTagResponse>(
            map['targetSecureTags'],
            (value) => FirewallPolicyRuleSecureTagResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      targetServiceAccounts: (map['targetServiceAccounts'] as List)
          .cast<String>(),
      tlsInspect: map['tlsInspect'] as bool,
    );
  }
}
