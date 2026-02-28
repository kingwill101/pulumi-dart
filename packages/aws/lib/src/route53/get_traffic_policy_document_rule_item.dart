// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentRuleItem {
  final String? endpointReference;
  final String? healthCheck;

  /// Creates a new [GetTrafficPolicyDocumentRuleItem].
  /// [endpointReference] Optional.
  /// [healthCheck] Optional.
  GetTrafficPolicyDocumentRuleItem({
    this.endpointReference,
    this.healthCheck,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointReferenceValue = endpointReference;
    if (endpointReferenceValue != null) {
      map['endpointReference'] = endpointReferenceValue;
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentRuleItem.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleItem(
      endpointReference: map['endpointReference'] == null
          ? null
          : map['endpointReference'] as String,
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
    );
  }
}
