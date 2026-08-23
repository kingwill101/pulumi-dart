// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy based on slack criteria, and a frequency and delay interval for evaluation
class BanditPolicyResponse {
  /// Number of intervals by which to delay the first evaluation.
  final pulumi.Input<int>? delayEvaluation;
  /// Interval (number of runs) between policy evaluations.
  final pulumi.Input<int>? evaluationInterval;
  /// Expected value is 'Bandit'.
  final pulumi.Input<String> policyType;
  /// Absolute distance allowed from the best performing run.
  final pulumi.Input<double>? slackAmount;
  /// Ratio of the allowed distance from the best performing run.
  final pulumi.Input<double>? slackFactor;

  /// Creates a new [BanditPolicyResponse].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'Bandit'.
  /// [slackAmount] Absolute distance allowed from the best performing run.
  /// [slackFactor] Ratio of the allowed distance from the best performing run.
  const BanditPolicyResponse({
    this.delayEvaluation,
    this.evaluationInterval,
    required this.policyType,
    this.slackAmount,
    this.slackFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayEvaluation': ?delayEvaluation,
      'evaluationInterval': ?evaluationInterval,
      'policyType': policyType,
      'slackAmount': ?slackAmount,
      'slackFactor': ?slackFactor,
    };
  }

  factory BanditPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BanditPolicyResponse(
      delayEvaluation: (() { final guardedValue = map['delayEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      evaluationInterval: (() { final guardedValue = map['evaluationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      slackAmount: (() { final guardedValue = map['slackAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      slackFactor: (() { final guardedValue = map['slackFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
