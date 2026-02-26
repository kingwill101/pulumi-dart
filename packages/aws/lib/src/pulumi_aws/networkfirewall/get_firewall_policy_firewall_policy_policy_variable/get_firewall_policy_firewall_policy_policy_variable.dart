// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_firewall_policy_firewall_policy_policy_variable_rule_variable/get_firewall_policy_firewall_policy_policy_variable_rule_variable.dart';

class GetFirewallPolicyFirewallPolicyPolicyVariable {
  final List<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable>
      ruleVariables;

  GetFirewallPolicyFirewallPolicyPolicyVariable({
    required this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ruleVariables'] = Input.encodeList<
        GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable,
        Map<String, dynamic>>(ruleVariables, (value) => value.toMap());
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariable.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariable(
      ruleVariables: Input.decodeList<
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable>(
          map['ruleVariables'],
          (value) =>
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
