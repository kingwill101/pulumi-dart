// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_policy_variable_rule_variable_ip_set.dart';

class GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable {
  final List<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet>
      ipSets;
  final String key;

  /// Creates a new [GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable].
  /// [ipSets] Required.
  /// [key] Required.
  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable({
    required this.ipSets,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipSets'] = pulumi.Input.encodeList<
        GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet,
        Map<String, dynamic>>(ipSets, (value) => value.toMap());
    map['key'] = key;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable(
      ipSets: pulumi.Input.decodeList<
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet>(
          map['ipSets'],
          (value) =>
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet
                  .fromMap((value as Map).cast<String, dynamic>())),
      key: map['key'] as String,
    );
  }
}
