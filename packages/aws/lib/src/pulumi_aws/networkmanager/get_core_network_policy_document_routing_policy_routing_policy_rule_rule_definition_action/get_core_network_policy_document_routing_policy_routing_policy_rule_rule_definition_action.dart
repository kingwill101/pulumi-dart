// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction {
  /// Type of action to perform. Valid values: <span pulumi-lang-nodejs="`drop`" pulumi-lang-dotnet="`Drop`" pulumi-lang-go="`drop`" pulumi-lang-python="`drop`" pulumi-lang-yaml="`drop`" pulumi-lang-java="`drop`">`drop`</span>, <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span>, <span pulumi-lang-nodejs="`summarize`" pulumi-lang-dotnet="`Summarize`" pulumi-lang-go="`summarize`" pulumi-lang-python="`summarize`" pulumi-lang-yaml="`summarize`" pulumi-lang-java="`summarize`">`summarize`</span>, `prepend-asn-list`, `remove-asn-list`, `replace-asn-list`, `add-community`, `remove-community`, `set-med`, `set-local-preference`.
  final String type;

  /// Value for the action, required for certain action types.
  final String? value;

  GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction({
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentRoutingPolicyRoutingPolicyRuleRuleDefinitionAction(
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
