// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an early termination policy based on slack criteria, and a frequency and delay interval for evaluation
class BanditPolicy {
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

  /// Creates a new [BanditPolicy].
  /// [delayEvaluation] Number of intervals by which to delay the first evaluation.
  /// [evaluationInterval] Interval (number of runs) between policy evaluations.
  /// [policyType] Expected value is 'Bandit'.
  /// [slackAmount] Absolute distance allowed from the best performing run.
  /// [slackFactor] Ratio of the allowed distance from the best performing run.
  BanditPolicy({
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

  factory BanditPolicy.fromMap(Map<String, dynamic> map) {
    return BanditPolicy(
      delayEvaluation: map['delayEvaluation'] == null ? null : (map['delayEvaluation']! as int).input(),
      evaluationInterval: map['evaluationInterval'] == null ? null : (map['evaluationInterval']! as int).input(),
      policyType: (map['policyType'] as String).input(),
      slackAmount: map['slackAmount'] == null ? null : (map['slackAmount']! as double).input(),
      slackFactor: map['slackFactor'] == null ? null : (map['slackFactor']! as double).input(),
    );
  }
}

