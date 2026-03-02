// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentRulePrimary {
  /// References to an endpoint.
  final pulumi.Input<String>? endpointReference;
  /// Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  final pulumi.Input<bool>? evaluateTargetHealth;
  /// If you want to associate a health check with the endpoint or rule.
  final pulumi.Input<String>? healthCheck;
  /// References to a rule.
  final pulumi.Input<String>? ruleReference;

  /// Creates a new [GetTrafficPolicyDocumentRulePrimary].
  /// [endpointReference] References to an endpoint.
  /// [evaluateTargetHealth] Indicates whether you want Amazon Route 53 to evaluate the health of the endpoint and route traffic only to healthy endpoints.
  /// [healthCheck] If you want to associate a health check with the endpoint or rule.
  /// [ruleReference] References to a rule.
  GetTrafficPolicyDocumentRulePrimary({
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

  factory GetTrafficPolicyDocumentRulePrimary.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRulePrimary(
      endpointReference: map['endpointReference'] == null ? null : (map['endpointReference'] as String).input(),
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : (map['evaluateTargetHealth'] as bool).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      ruleReference: map['ruleReference'] == null ? null : (map['ruleReference'] as String).input(),
    );
  }
}

