// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_firewall_policy_with_rules_rule/network_firewall_policy_with_rules_rule.dart';

/// The set of arguments for NetworkFirewallPolicyWithRules.
class NetworkFirewallPolicyWithRulesArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`.
  final pulumi.Input<String>? policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesRule>> rules;

  NetworkFirewallPolicyWithRulesArgs({
    this.description,
    this.name,
    this.policyType,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rules'] = pulumi.Input.mapInputValue<
            List<NetworkFirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<NetworkFirewallPolicyWithRulesRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory NetworkFirewallPolicyWithRulesArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyType: pulumi.Input.asOptionalInput<String>(map['policyType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rules: pulumi.Input.asInput<List<NetworkFirewallPolicyWithRulesRule>>(
          map['rules']),
    );
  }
}
