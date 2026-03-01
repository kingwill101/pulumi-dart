// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet {
  final List<String> definitions;

  /// Creates a new [GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet].
  /// [definitions] Required.
  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
    };
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet(
      definitions: (map['definitions'] as List).cast<String>(),
    );
  }
}

