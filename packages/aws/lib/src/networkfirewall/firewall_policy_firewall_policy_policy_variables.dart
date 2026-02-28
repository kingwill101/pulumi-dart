// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_policy_variables_rule_variable.dart';

class FirewallPolicyFirewallPolicyPolicyVariables {
  final List<FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable>?
      ruleVariables;

  /// Creates a new [FirewallPolicyFirewallPolicyPolicyVariables].
  /// [ruleVariables] Optional.
  FirewallPolicyFirewallPolicyPolicyVariables({
    this.ruleVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ruleVariablesValue = ruleVariables;
    if (ruleVariablesValue != null) {
      map['ruleVariables'] = pulumi.Input.encodeList<
          FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable,
          Map<String, dynamic>>(ruleVariablesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirewallPolicyFirewallPolicyPolicyVariables.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyPolicyVariables(
      ruleVariables: map['ruleVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable>(
              map['ruleVariables'],
              (value) => FirewallPolicyFirewallPolicyPolicyVariablesRuleVariable
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
