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
  const GetTrafficPolicyDocumentRuleSecondary({
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
      endpointReference: (() { final guardedValue = map['endpointReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluateTargetHealth: (() { final guardedValue = map['evaluateTargetHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleReference: (() { final guardedValue = map['ruleReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
