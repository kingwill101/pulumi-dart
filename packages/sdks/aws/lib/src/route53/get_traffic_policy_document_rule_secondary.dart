// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentRuleSecondary {
  final pulumi.Input<String>? endpointReference;
  final pulumi.Input<bool>? evaluateTargetHealth;
  final pulumi.Input<String>? healthCheck;
  final pulumi.Input<String>? ruleReference;

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

  factory GetTrafficPolicyDocumentRuleSecondary.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleSecondary(
      endpointReference: map['endpointReference'] == null ? null : (map['endpointReference'] as String).input(),
      evaluateTargetHealth: map['evaluateTargetHealth'] == null ? null : (map['evaluateTargetHealth'] as bool).input(),
      healthCheck: map['healthCheck'] == null ? null : (map['healthCheck'] as String).input(),
      ruleReference: map['ruleReference'] == null ? null : (map['ruleReference'] as String).input(),
    );
  }
}

