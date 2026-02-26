// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentPolicyCondition {
  /// string value
  final String? key;

  /// Valid values include: <span pulumi-lang-nodejs="`equals`" pulumi-lang-dotnet="`Equals`" pulumi-lang-go="`equals`" pulumi-lang-python="`equals`" pulumi-lang-yaml="`equals`" pulumi-lang-java="`equals`">`equals`</span>, `not-equals`, <span pulumi-lang-nodejs="`contains`" pulumi-lang-dotnet="`Contains`" pulumi-lang-go="`contains`" pulumi-lang-python="`contains`" pulumi-lang-yaml="`contains`" pulumi-lang-java="`contains`">`contains`</span>, `begins-with`.
  final String? operator;

  /// Must be `routing-policy-label`.
  final String type;

  /// Routing policy label to match.
  final String? value;

  GetCoreNetworkPolicyDocumentAttachmentPolicyCondition({
    this.key,
    this.operator,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue;
    }
    map['type'] = type;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicyCondition.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicyCondition(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
