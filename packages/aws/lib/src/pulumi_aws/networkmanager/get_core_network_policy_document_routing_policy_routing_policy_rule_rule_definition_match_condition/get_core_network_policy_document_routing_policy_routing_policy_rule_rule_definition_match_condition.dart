// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition {
  /// Type of condition to match. Valid values: `prefix-equals`, `prefix-in-cidr`, `prefix-in-prefix-list`, `asn-in-as-path`, `community-in-list`, `med-equals`.
  final String type;

  /// Value to match against, depending on the condition type.
  final String value;

  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionMatchCondition(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
