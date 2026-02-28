// ignore_for_file: unused_element, unnecessary_cast

class GetTrafficPolicyDocumentRuleSecondary {
  final String? endpointReference;
  final bool? evaluateTargetHealth;
  final String? healthCheck;
  final String? ruleReference;

  /// Creates a new [GetTrafficPolicyDocumentRuleSecondary].
  /// [endpointReference] Optional.
  /// [evaluateTargetHealth] Optional.
  /// [healthCheck] Optional.
  /// [ruleReference] Optional.
  GetTrafficPolicyDocumentRuleSecondary({
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

  factory GetTrafficPolicyDocumentRuleSecondary.fromMap(
      Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleSecondary(
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
