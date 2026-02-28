// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentPolicyCondition {
  /// string value
  final String? key;

  /// Valid values include: `equals`, `not-equals`, `contains`, `begins-with`.
  final String? operator;

  /// Must be `routing-policy-label`.
  final String type;

  /// Routing policy label to match.
  final String? value;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentPolicyCondition].
  /// [key] string value
  /// [operator] Valid values include: `equals`, `not-equals`, `contains`, `begins-with`.
  /// [type] Must be `routing-policy-label`.
  /// [value] Routing policy label to match.
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
