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
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'type': type,
      'value': ?value,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicyCondition.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicyCondition(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

