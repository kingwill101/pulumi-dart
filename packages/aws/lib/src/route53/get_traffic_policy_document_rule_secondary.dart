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
    return <String, dynamic>{
      'endpointReference': ?endpointReference,
      'evaluateTargetHealth': ?evaluateTargetHealth,
      'healthCheck': ?healthCheck,
      'ruleReference': ?ruleReference,
    };
  }

  factory GetTrafficPolicyDocumentRuleSecondary.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTrafficPolicyDocumentRuleSecondary(
      endpointReference: map['endpointReference'] == null
          ? null
          : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null
          ? null
          : map['evaluateTargetHealth'] as bool,
      healthCheck: map['healthCheck'] == null
          ? null
          : map['healthCheck'] as String,
      ruleReference: map['ruleReference'] == null
          ? null
          : map['ruleReference'] as String,
    );
  }
}
