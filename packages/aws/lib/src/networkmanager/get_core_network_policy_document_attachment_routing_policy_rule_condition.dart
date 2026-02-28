// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition {
  /// Must be `routing-policy-label`.
  final String type;

  /// Routing policy label to match.
  final String value;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition].
  /// [type] Must be `routing-policy-label`.
  /// [value] Routing policy label to match.
  GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentRoutingPolicyRuleCondition(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
