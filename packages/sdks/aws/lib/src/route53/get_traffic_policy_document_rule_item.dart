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
    return <String, dynamic>{
      'endpointReference': ?endpointReference,
      'healthCheck': ?healthCheck,
    };
  }

  factory GetTrafficPolicyDocumentRuleItem.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleItem(
      endpointReference: map['endpointReference'] == null ? null : map['endpointReference'] as String,
      healthCheck: map['healthCheck'] == null ? null : map['healthCheck'] as String,
    );
  }
}

