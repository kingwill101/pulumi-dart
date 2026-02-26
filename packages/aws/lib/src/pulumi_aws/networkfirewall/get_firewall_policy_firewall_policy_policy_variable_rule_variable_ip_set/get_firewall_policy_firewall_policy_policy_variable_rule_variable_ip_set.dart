// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet {
  final List<String> definitions;

  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definitions'] = definitions;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}
