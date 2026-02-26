// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_network_firewall_policy_rule_match/region_network_firewall_policy_rule_match.dart';
import '../region_network_firewall_policy_rule_target_secure_tag/region_network_firewall_policy_rule_target_secure_tag.dart';

/// The set of arguments for RegionNetworkFirewallPolicyRule.
class RegionNetworkFirewallPolicyRuleArgs {
  /// The Action to perform when the client connection triggers the rule. Valid actions are "allow", "deny", <span pulumi-lang-nodejs=""gotoNext"" pulumi-lang-dotnet=""GotoNext"" pulumi-lang-go=""gotoNext"" pulumi-lang-python=""goto_next"" pulumi-lang-yaml=""gotoNext"" pulumi-lang-java=""gotoNext"">"goto_next"</span> and <span pulumi-lang-nodejs=""applySecurityProfileGroup"" pulumi-lang-dotnet=""ApplySecurityProfileGroup"" pulumi-lang-go=""applySecurityProfileGroup"" pulumi-lang-python=""apply_security_profile_group"" pulumi-lang-yaml=""applySecurityProfileGroup"" pulumi-lang-java=""applySecurityProfileGroup"">"apply_security_profile_group"</span>.
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

  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the configured export destination in Stackdriver.
  /// Logs may be exported to BigQuery or Pub/Sub.
  /// Note: you cannot enable logging on <span pulumi-lang-nodejs=""gotoNext"" pulumi-lang-dotnet=""GotoNext"" pulumi-lang-go=""gotoNext"" pulumi-lang-python=""goto_next"" pulumi-lang-yaml=""gotoNext"" pulumi-lang-java=""gotoNext"">"goto_next"</span> rules.
  final Input<bool>? enableLogging;

  /// The firewall policy of the resource.
  final Input<String> firewallPolicy;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final Input<RegionNetworkFirewallPolicyRuleMatch> match;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest prority.
  final Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location of this resource.
  final Input<String>? region;

  /// An optional name for the rule. This field is not a unique identifier and can be updated.
  final Input<String>? ruleName;

  /// A fully-qualified URL of a SecurityProfile resource instance.
  /// Example: https://networksecurity.googleapis.com/v1/projects/{project}/locations/{location}/securityProfileGroups/my-security-profile-group
  /// Must be specified if action = 'apply_security_profile_group' and cannot be specified for other actions.
  /// Security Profile Group and Firewall Policy Rule must be in the same scope.
  final Input<String>? securityProfileGroup;

  /// A list of secure tags that controls which instances the firewall rule applies to.
  /// If targetSecureTag are specified, then the firewall rule applies only to instances in the VPC network that have one of those EFFECTIVE secure tags, if all the targetSecureTag are in INEFFECTIVE state, then this rule will be ignored.
  /// targetSecureTag may not be set at the same time as targetServiceAccounts. If neither targetServiceAccounts nor targetSecureTag are specified, the firewall rule applies to all instances on the specified network. Maximum number of target label tags allowed is 256.
  /// Structure is documented below.
  final Input<List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>?
      targetSecureTags;

  /// A list of service accounts indicating the sets of instances that are applied with this rule.
  final Input<List<String>>? targetServiceAccounts;

  /// Boolean flag indicating if the traffic should be TLS decrypted.
  /// Can be set only if action = 'apply_security_profile_group' and cannot be set for other actions.
  final Input<bool>? tlsInspect;

  RegionNetworkFirewallPolicyRuleArgs({
    required this.action,
    this.description,
    required this.direction,
    this.disabled,
    this.enableLogging,
    required this.firewallPolicy,
    required this.match,
    required this.priority,
    this.project,
    this.region,
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
    map['match'] = Input.mapInputValue<RegionNetworkFirewallPolicyRuleMatch,
        Map<String, dynamic>>(match, (value) => value.toMap());
    map['priority'] = priority;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
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
              List<RegionNetworkFirewallPolicyRuleTargetSecureTag>,
              List<Map<String, dynamic>>>(
          targetSecureTagsValue,
          (value) => Input.encodeList<
              RegionNetworkFirewallPolicyRuleTargetSecureTag,
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

  factory RegionNetworkFirewallPolicyRuleArgs.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyRuleArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      direction: Input.asInput<String>(map['direction']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      firewallPolicy: Input.asInput<String>(map['firewallPolicy']),
      match: Input.asInput<RegionNetworkFirewallPolicyRuleMatch>(map['match']),
      priority: Input.asInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleName: Input.asOptionalInput<String>(map['ruleName']),
      securityProfileGroup:
          Input.asOptionalInput<String>(map['securityProfileGroup']),
      targetSecureTags: Input.asOptionalInput<
              List<RegionNetworkFirewallPolicyRuleTargetSecureTag>>(
          map['targetSecureTags']),
      targetServiceAccounts:
          Input.asOptionalInput<List<String>>(map['targetServiceAccounts']),
      tlsInspect: Input.asOptionalInput<bool>(map['tlsInspect']),
    );
  }
}
