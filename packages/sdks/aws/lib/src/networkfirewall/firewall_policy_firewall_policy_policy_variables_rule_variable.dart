// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_policy_variables_rule_variable_ip_set.dart';

class FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable {
  /// A configuration block that defines a set of IP addresses. See IP Set below for details.
  final pulumi.Input<
    FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet
  >
  ipSet;

  /// An alphanumeric string to identify the `ip_set`. Valid values: `HOME_NET`
  final pulumi.Input<String> key;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable].
  /// [ipSet] A configuration block that defines a set of IP addresses. See IP Set below for details.
  /// [key] An alphanumeric string to identify the `ip_set`. Valid values: `HOME_NET`
  FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable({
    required this.ipSet,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSet':
          pulumi.Input.mapInputValue<
            FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet,
            Map<String, dynamic>
          >(ipSet, (value) => value.toMap()),
      'key': key,
    };
  }

  factory FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable(
      ipSet: pulumi.Input.fromValue(
        FirewallPolicyFirewallPolicyPolicyVariablesRuleVariableIpSet.fromMap(
          (map['ipSet']! as Map).cast<String, dynamic>(),
        ),
      ),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
