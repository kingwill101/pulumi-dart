// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_network_firewall_policy_with_rules_rule/region_network_firewall_policy_with_rules_rule.dart';

/// The set of arguments for RegionNetworkFirewallPolicyWithRules.
class RegionNetworkFirewallPolicyWithRulesArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  final Input<String>? policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of this resource.
  final Input<String>? region;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final Input<List<RegionNetworkFirewallPolicyWithRulesRule>> rules;

  RegionNetworkFirewallPolicyWithRulesArgs({
    this.description,
    this.name,
    this.policyType,
    this.project,
    this.region,
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = Input.mapInputValue<
            List<RegionNetworkFirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => Input.encodeList<RegionNetworkFirewallPolicyWithRulesRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory RegionNetworkFirewallPolicyWithRulesArgs.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyWithRulesArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      policyType: Input.asOptionalInput<String>(map['policyType']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asInput<List<RegionNetworkFirewallPolicyWithRulesRule>>(
          map['rules']),
    );
  }
}
