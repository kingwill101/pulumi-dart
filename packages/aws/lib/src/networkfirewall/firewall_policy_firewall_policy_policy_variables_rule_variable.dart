// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_policy_firewall_policy_policy_variables_rule_variable_ip_set.dart';

class FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable {
  /// A configuration block that defines a set of IP addresses. See IP Set below for details.
  final FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet ipSet;

  /// An alphanumeric string to identify the `ip_set`. Valid values: `HOME_NET`
  final String key;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable].
  /// [ipSet] A configuration block that defines a set of IP addresses. See IP Set below for details.
  /// [key] An alphanumeric string to identify the `ip_set`. Valid values: `HOME_NET`
  FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable({
    required this.ipSet,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipSet'] = ipSet.toMap();
    map['key'] = key;
    return map;
  }

  factory FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable(
      ipSet:
          FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet.fromMap(
              (map['ipSet'] as Map).cast<String, dynamic>()),
      key: map['key'] as String,
    );
  }
}
