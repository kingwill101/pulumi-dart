// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_policy_variables_rule_variable.dart';

class FirewallPolicyFirewallPolicyPolicyVariables {
  final pulumi.Input<List<FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable>>? ruleVariables;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariables].
  /// [ruleVariables] Optional.
  const FirewallPolicyFirewallPolicyPolicyVariables({
    this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable>, List<Map<String, dynamic>>>(ruleVariables, (value) => pulumi.Input.encodeList<FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyFirewallPolicyPolicyVariables.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyPolicyVariables(
      ruleVariables: (() { final guardedValue = map['ruleVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable>(guardedValue, (value) => FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
