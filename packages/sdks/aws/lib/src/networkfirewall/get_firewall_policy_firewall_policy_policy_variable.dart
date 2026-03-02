// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_policy_variable_rule_variable.dart';

class GetFirewallPolicyFirewallPolicyPolicyVariable {
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable>> ruleVariables;

  /// Creates a new [GetFirewallPolicyFirewallPolicyPolicyVariable].
  /// [ruleVariables] Required.
  GetFirewallPolicyFirewallPolicyPolicyVariable({
    required this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable>, List<Map<String, dynamic>>>(ruleVariables, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariable.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariable(
      ruleVariables: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable>(map['ruleVariables']!, (value) => GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

