// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet {
  /// Set of IPv4 or IPv6 addresses in CIDR notation to use for the Suricata `HOME_NET` variable.
  final List<String> definitions;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet].
  /// [definitions] Set of IPv4 or IPv6 addresses in CIDR notation to use for the Suricata `HOME_NET` variable.
  FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
    };
  }

  factory FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}

