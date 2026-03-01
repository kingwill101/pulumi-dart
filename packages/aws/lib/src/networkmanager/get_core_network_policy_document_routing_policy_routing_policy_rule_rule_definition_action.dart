// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction {
  /// Type of action to perform. Valid values: `drop`, `allow`, `summarize`, `prepend-asn-list`, `remove-asn-list`, `replace-asn-list`, `add-community`, `remove-community`, `set-med`, `set-local-preference`.
  final String type;

  /// Value for the action, required for certain action types.
  final String? value;

  /// Creates a new [GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction].
  /// [type] Type of action to perform. Valid values: `drop`, `allow`, `summarize`, `prepend-asn-list`, `remove-asn-list`, `replace-asn-list`, `add-community`, `remove-community`, `set-med`, `set-local-preference`.
  /// [value] Value for the action, required for certain action types.
  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': ?value};
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction(
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
