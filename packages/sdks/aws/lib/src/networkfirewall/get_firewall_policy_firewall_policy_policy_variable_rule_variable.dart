// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_policy_variable_rule_variable_ip_set.dart';

class GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable {
  final pulumi.Input<
    List<GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet>
  >
  ipSets;
  final pulumi.Input<String> key;

  /// Creates a new [GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable].
  /// [ipSets] Required.
  /// [key] Required.
  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable({
    required this.ipSets,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets':
          pulumi.Input.mapInputValue<
            List<
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet
            >,
            List<Map<String, dynamic>>
          >(
            ipSets,
            (value) =>
                pulumi.Input.encodeList<
                  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'key': key,
    };
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariable(
      ipSets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet
        >(
          map['ipSets']!,
          (value) =>
              GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
