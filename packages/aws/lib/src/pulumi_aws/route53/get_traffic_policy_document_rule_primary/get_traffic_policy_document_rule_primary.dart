// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentRulePrimary {
  /// References to an endpoint.
  final String? endpointReference;

  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final bool? evaluateTargetHealth;

  /// If you want to associate a health check with the endpoint or rule.
  final String? healthCheck;

  /// References to a rule.
  final String? ruleReference;

  GetTrafficPolicyDocumentRulePrimary({
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.ruleReference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointReferenceValue = endpointReference;
    if (endpointReferenceValue != null) {
      map['endpointReference'] = endpointReferenceValue;
    }
    final evaluateTargetHealthValue = evaluateTargetHealth;
    if (evaluateTargetHealthValue != null) {
      map['evaluateTargetHealth'] = evaluateTargetHealthValue;
    }
    final healthCheckValue = healthCheck;
    if (healthCheckValue != null) {
      map['healthCheck'] = healthCheckValue;
    }
    final ruleReferenceValue = ruleReference;
    if (ruleReferenceValue != null) {
      map['ruleReference'] = ruleReferenceValue;
    }
    return map;
  }

  factory GetTrafficPolicyDocumentRulePrimary.fromMap(
      Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRulePrimary(
      endpointReference: map['endpointReference'] == null
          ? null
          : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null
          ? null
          : map['evaluateTargetHealth'] as bool,
      healthCheck:
          map['healthCheck'] == null ? null : map['healthCheck'] as String,
      ruleReference:
          map['ruleReference'] == null ? null : map['ruleReference'] as String,
    );
  }
}
