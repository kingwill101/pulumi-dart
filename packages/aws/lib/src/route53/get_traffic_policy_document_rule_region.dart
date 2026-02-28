// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficPolicyDocumentRuleRegion {
  /// References to an endpoint.
  final String? endpointReference;
  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final bool? evaluateTargetHealth;
  /// If you want to associate a health check with the endpoint or rule.
  final String? healthCheck;
  /// Region code for the AWS Region that you created the resource in.
  final String? region;
  /// References to a rule.
  final String? ruleReference;

  /// Creates a new [GetTrafficPolicyDocumentRuleRegion].
  /// [endpointReference] References to an endpoint.
  /// [evaluateTargetHealth] Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  /// [healthCheck] If you want to associate a health check with the endpoint or rule.
  /// [region] Region code for the AWS Region that you created the resource in.
  /// [ruleReference] References to a rule.
  GetTrafficPolicyDocumentRuleRegion({
    this.endpointReference,
    this.evaluateTargetHealth,
    this.healthCheck,
    this.region,
    this.ruleReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointReference': ?endpointReference,
      'evaluateTargetHealth': ?evaluateTargetHealth,
      'healthCheck': ?healthCheck,
      'region': ?region,
      'ruleReference': ?ruleReference,
    };
  }

  factory GetTrafficPolicyDocumentRuleRegion.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleRegion(
      endpointReference: map['endpointReference'] == null ? null : map['endpointReference'] as String,
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : map['evaluateTargetHealth'] as bool,
      healthCheck: map['healthCheck'] == null ? null : map['healthCheck'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      ruleReference: map['ruleReference'] == null ? null : map['ruleReference'] as String,
    );
  }
}

