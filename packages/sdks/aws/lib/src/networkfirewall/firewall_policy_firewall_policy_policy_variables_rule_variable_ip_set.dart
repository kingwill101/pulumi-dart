// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet {
  /// Set of IPv4 or IPv6 addresses in CIDR notation to use for the Suricata `HOME_NET` variable.
  final pulumi.Input<List<String>> definitions;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet].
  /// [definitions] Set of IPv4 or IPv6 addresses in CIDR notation to use for the Suricata `HOME_NET` variable.
  const FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
    };
  }

  factory FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet(
      definitions: pulumi.Input.fromValue((map['definitions'] as List).cast<String>()),
    );
  }
}

